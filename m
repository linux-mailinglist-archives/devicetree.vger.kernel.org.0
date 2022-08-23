Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 326F859ED39
	for <lists+devicetree@lfdr.de>; Tue, 23 Aug 2022 22:17:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232935AbiHWURE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Aug 2022 16:17:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51922 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232937AbiHWUQt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Aug 2022 16:16:49 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B70259083D
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 12:39:57 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 3BDCCB81D55
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 19:39:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E262EC433D7
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 19:39:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1661283594;
        bh=UmJ3SND9HrJuAc+M4OZS1CSTGJAGx0vAUcF1OwRnczY=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=ZoOZl6XelUKHkLdJZGEWQmvUdjG/+zPFLvgUL/TL2Jf6wGwPDl6BHBJa4A/9sf1GP
         LACz9XsUM6vjpH6sEl8A5S/aWVYSo/rNPGBlCrntt9i9E2GjimA4C5wOPKP3og8iAO
         Ne3lX+C0h4I0nb0qbfj267pYO3G4ZQlNjkPCCSykJ7stCpE/U/V9hTU6NTDomQeEPe
         PwffWjIh9mjLTOIwnKmrJituJhoLUC0q/lurMj25soaMoXibjc/6BPyNCBHJGGmU4c
         VxEX+VU8++zuGN60Z+vyR7jZ9DbgsAho0KXDt9HM4tK1ZeHzTThzCZHZChSomLar29
         IMkNcoch3vcBA==
Received: by mail-vs1-f45.google.com with SMTP id 67so15480967vsv.2
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 12:39:54 -0700 (PDT)
X-Gm-Message-State: ACgBeo1tUkRKtMSDVW22YRr3r4a2CTKzntP85sGnU5tBKSlVKYP12OBb
        w8Tn9KYfFixLv6W4qN7VF4qOXUhBn9F7Ip1vNA==
X-Google-Smtp-Source: AA6agR46RLTHsg0dVxUhHe9J+9UIzEhSO58YATLGNEO/uDxIxO2MtZQTrW9ZVLx9MtwTy2gv8/5IN2EESBvaFVaTDMU=
X-Received: by 2002:a05:6102:3353:b0:38c:9170:a96b with SMTP id
 j19-20020a056102335300b0038c9170a96bmr10626722vse.26.1661283593772; Tue, 23
 Aug 2022 12:39:53 -0700 (PDT)
MIME-Version: 1.0
References: <Yum6Bi+vQanfTEsV@lunn.ch>
In-Reply-To: <Yum6Bi+vQanfTEsV@lunn.ch>
From:   Rob Herring <robh@kernel.org>
Date:   Tue, 23 Aug 2022 14:39:42 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJZhTqScATHZqOsiqqZeB-RQjPeVthnBFMzZr_5irg3iQ@mail.gmail.com>
Message-ID: <CAL_JsqJZhTqScATHZqOsiqqZeB-RQjPeVthnBFMzZr_5irg3iQ@mail.gmail.com>
Subject: Re: Property names regex
To:     Andrew Lunn <andrew@lunn.ch>
Cc:     Device Tree <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Aug 2, 2022 at 6:58 PM Andrew Lunn <andrew@lunn.ch> wrote:
>
> Hi Rob
>
> I'm slowly converting some of the Marvell binding documents to YAML.
>
> I've got a problem with one of the interrupt controllers.

devicetree-spec@vger.kernel.org is less of a firehose and better for
asking questions.

> Documentation/devicetree/bindings/interrupt-controller/marvell,orion-intc.txt
> includes:
>
> Optional properties:
> - marvell,#interrupts: number of interrupts provided by bridge interrupt
>       controller, defaults to 32 if not set
>
>
> I converted this to YAML as:
>
>   'marvell,#interrupts':
>     description:
>       number of interrupts provided by bridge interrupt controller
>     $ref: /schemas/types.yaml#/definitions/uint32
>     default: 32
>
> but when i run dt_binding_check, i get:
>
> home/andrew/linux/Documentation/devicetree/bindings/interrupt-controller/marvell,orion-bridge-intc.yaml: properties: 'marvell,#interrupts' does not match '^[#$a-zA-Z][a-zA-Z0-9,+\\-._@]{0,63}$'
>         hint: Expected a valid DT property name
>         from schema $id: http://devicetree.org/meta-schemas/keywords.yaml#
>
> As far as i can see from:
>
> https://devicetree-specification.readthedocs.io/en/v0.3/devicetree-basics.html#properties
>
> A property name is allowed a # anywhere in it, not just at the start.

Yes, the schemas are a bit more restrictive for modern DTs than the spec.

> How do i get this regex changed?

I committed a fix to relax this[1].

Rob

[1] https://github.com/devicetree-org/dt-schema/commit/0e28a44059a6e33314784cfaf7b45d48afd10527
