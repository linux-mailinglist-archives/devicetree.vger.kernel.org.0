Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D608F54E8A7
	for <lists+devicetree@lfdr.de>; Thu, 16 Jun 2022 19:31:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233708AbiFPRbC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Jun 2022 13:31:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40658 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233698AbiFPRbC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Jun 2022 13:31:02 -0400
Received: from mail-io1-f42.google.com (mail-io1-f42.google.com [209.85.166.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 010152CCA4
        for <devicetree@vger.kernel.org>; Thu, 16 Jun 2022 10:31:00 -0700 (PDT)
Received: by mail-io1-f42.google.com with SMTP id b138so2158091iof.13
        for <devicetree@vger.kernel.org>; Thu, 16 Jun 2022 10:31:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=8a7QwMXh0WvhKBovKjAxawErQjPq4EtS9dlKozf7SOc=;
        b=irpj6nAKusgXfDPaxRI89k3ngXZ47O1hb1wC3igEE6E53l9wEvIYet3F35MdvosKIz
         0i/vEgE+16ZluAkqK5MtNIlPcDATWB/OiszJmBOsOZgKp1op/grrFZHRb0EGjUerLhb+
         tuVttP5qRdY2VWf2+/UkK2nEs0YtJwt/A6bgKRBWfz05//A8aa/rS4ILikNRk3JSKVdW
         KPrmB3p9Cql/9nl1yMZYnHvJDrd8YhKV2mnuZjfU6DJPcwLIltc9RngYk9xSUz9p3Kz1
         ERLvtZ2Webo6rdRsbn0Laq4SFtkF7KqsVIib7MollKKmqjfXxwyUUcRk0HHYRPwmnGDj
         JH4w==
X-Gm-Message-State: AJIora8xyq+g6vUxfojCrQzaG4Pz/axtVMQ6H/r4xo15rgHRS4DRf2cR
        xYtDAqhNbXITIvooB/hUA3WXPXgRpQ==
X-Google-Smtp-Source: AGRyM1tilafp3/g2JlXcLwpfxJbUDzbriaMFtxnfXYVjSbiES+p4NE9LW66nFvZUqtE+Pka7ETq6oQ==
X-Received: by 2002:a5e:8404:0:b0:66a:13cc:f2bc with SMTP id h4-20020a5e8404000000b0066a13ccf2bcmr3005364ioj.95.1655400660264;
        Thu, 16 Jun 2022 10:31:00 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.251])
        by smtp.gmail.com with ESMTPSA id a92-20020a029465000000b0032e1e0ac289sm1138393jai.8.2022.06.16.10.30.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jun 2022 10:30:59 -0700 (PDT)
Received: (nullmailer pid 3687346 invoked by uid 1000);
        Thu, 16 Jun 2022 17:30:56 -0000
Date:   Thu, 16 Jun 2022 11:30:56 -0600
From:   Rob Herring <robh@kernel.org>
To:     Christian Lamparter <chunkeey@gmail.com>
Cc:     devicetree@vger.kernel.org,
        Florian Fainelli <f.fainelli@gmail.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Rob Herring <robh+dt@kernel.org>,
        =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
        Hauke Mehrtens <hauke@hauke-m.de>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v1 1/2] dt-bindings: ARM: add bindings for the Meraki MR26
Message-ID: <20220616173056.GA3687255-robh@kernel.org>
References: <20220611165948.410308-1-chunkeey@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220611165948.410308-1-chunkeey@gmail.com>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 11 Jun 2022 18:59:47 +0200, Christian Lamparter wrote:
> mark the Meraki MR26 and its SoC (BCM53015) as supported
> in the bindings documentation file.
> 
> <https://jp.broadcom.com/products/embedded-and-networking-processors/communications/bcm5301x>
> 
> "BCM53011 and BCM53015 with dual-core Cortex-A9 CPU at 800 MHz,
> 256KB L2 cache, 16-bit DDR2 interface, USB3, integrated switch,
> GPHYs and packet accelerator"
> 
> Signed-off-by: Christian Lamparter <chunkeey@gmail.com>
> ---
>  .../devicetree/bindings/arm/bcm/brcm,bcm4708.yaml          | 7 +++++++
>  1 file changed, 7 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
