<?php

namespace App\Form;

use App\Entity\Events;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\DateTimeType;
use Symfony\Component\Form\Extension\Core\Type\EmailType;
use Symfony\Component\Form\Extension\Core\Type\NumberType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class EventsType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('name', TextType::class, ["attr" =>["class" => "", "placeholder" => "Name of Event"]])
            ->add('date', DateTimeType::class, ["attr" =>["value" => ""]])
            ->add('description', TextareaType::class, ["attr" =>["class" => "", "placeholder" => "Description"]])
            ->add('image', TextType::class, ["attr" =>["class" => "", "placeholder" => "Image address"]])
            ->add('capacity', NumberType::class, ["attr" =>["class" => "", "placeholder" => "Capacity of Location"]])
            ->add('contact_email', EmailType::class, ["attr" =>["class" => "", "placeholder" => "Contact Email"]])
            ->add('contact_phone_number', NumberType::class, ["attr" =>["class" => "", "placeholder" => "Contact Phone Number"]])
            ->add('address', TextType::class, ["attr" =>["class" => "", "placeholder" => "Location Address"]])
            ->add('url', TextType::class, ["attr" =>["class" => "", "placeholder" => "Url"]])
            ->add('type', ChoiceType::class, ["attr" =>["class" => ""], 'choices'  => [
                'Music' => "Music",
                'Sport' => "Sport",
                'Theater' => "Theater",
                'Movie' => "Movie",
            ]])
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Events::class,
        ]);
    }
}


// public function buildForm(FormBuilderInterface $builder, array $options): void
// {
//     $builder
//         ->add('name', TextType::class, ["attr" =>["class" => "form-control", "placeholder" => "Name"]])
//         ->add('date', DateTimeType::class, ["attr" =>["class" => "form-control"]])
//         ->add('description', TextareaType::class, ["attr" =>["class" => "form-control", "placeholder" => "Description"]])
//         ->add('image', TextType::class, ["attr" =>["class" => "form-control", "placeholder" => "Image address"]])
//         ->add('capacity', NumberType::class, ["attr" =>["class" => "form-control", "placeholder" => "Capacity"]])
//         ->add('contact_email', EmailType::class, ["attr" =>["class" => "form-control", "placeholder" => "Email"]])
//         ->add('contact_phone_number', NumberType::class, ["attr" =>["class" => "form-control", "placeholder" => "Phone Number"]])
//         ->add('address', TextType::class, ["attr" =>["class" => "form-control", "placeholder" => "address"]])
//         ->add('url', TextType::class, ["attr" =>["class" => "form-control", "placeholder" => "Url"]])
//         ->add('type', ChoiceType::class, ["attr" =>["class" => "form-control"], 'choices'  => [
//             'Music' => "Music",
//             'Sport' => "Sport",
//             'Theater' => "Theater",
//             'Movie' => "Movie",
//         ]])
//     ;
// }