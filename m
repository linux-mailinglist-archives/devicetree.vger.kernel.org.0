Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4B1B951FC94
	for <lists+devicetree@lfdr.de>; Mon,  9 May 2022 14:21:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234247AbiEIMYy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 May 2022 08:24:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55540 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234227AbiEIMYy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 May 2022 08:24:54 -0400
Received: from mail-oa1-f43.google.com (mail-oa1-f43.google.com [209.85.160.43])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B732C25473F
        for <devicetree@vger.kernel.org>; Mon,  9 May 2022 05:21:00 -0700 (PDT)
Received: by mail-oa1-f43.google.com with SMTP id 586e51a60fabf-e656032735so14486996fac.0
        for <devicetree@vger.kernel.org>; Mon, 09 May 2022 05:21:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=A+PMCPJpBabuT56DKMS6KxZZ7tR5sfAfkb9qoZpWbRo=;
        b=EMhG59cuHsr7wjvOMh4AdLo6eexxUKVPd7IA5uj/yRGHnmGAOK+IgTj6Gq3Kmxct5e
         xoEMd5UR/P76gjSezZUkqYR9Xnbh+Gi+iuCwYNTr0i3SH+kPVPyfkKYKSvnhKLRPCM/Y
         6l6y76PKkyHRHn0dCzj0W7VREVii9lfyrzNYDwEN+L54M5bgvgYEq2XPKlnlajwPImrC
         ujAEf/ehxWtC0yOg8tSsgLoi0l30crC26x3nxEQuhw3Y4YR55o9HEcV0BXq6uqFavPOT
         Q884W+piE437RPpF9r+aBifLYexpGFxc5G9Bi4jW6dN8wdkr+d9VAwF5tnTSN3XhqXS1
         /UWA==
X-Gm-Message-State: AOAM532fKL50hK/xY4bbzRucvXBaOLN0BicC4kwcNn5rNGZWVxOh6A2E
        ON0t9G/k8NQ9d2lTJh0bBw==
X-Google-Smtp-Source: ABdhPJwxnblgd/nHBwFUUtG14T0cNnLWsAa58m6NjD2fTRrptzHgHCtjQpUCWimSpGUcJlZ5vSyOEA==
X-Received: by 2002:a05:6870:524f:b0:ed:824:4238 with SMTP id o15-20020a056870524f00b000ed08244238mr6922488oai.113.1652098859945;
        Mon, 09 May 2022 05:20:59 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id i7-20020a05683033e700b00606a6c09a0csm14805otu.12.2022.05.09.05.20.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 May 2022 05:20:59 -0700 (PDT)
Received: (nullmailer pid 3576226 invoked by uid 1000);
        Mon, 09 May 2022 12:20:58 -0000
From:   Rob Herring <robh@kernel.org>
To:     Daniel Kaehn <kaehndan@gmail.com>
Cc:     tiwai@suse.com, devicetree@vger.kernel.org,
        alsa-devel@alsa-project.org
In-Reply-To: <20220509032836.1116866-2-kaehndan@gmail.com>
References: <20220509032836.1116866-1-kaehndan@gmail.com> <20220509032836.1116866-2-kaehndan@gmail.com>
Subject: Re: [PATCH v6 1/2] dt-bindings: sound: Add generic serial MIDI device
Date:   Mon, 09 May 2022 07:20:58 -0500
Message-Id: <1652098858.543235.3576225.nullmailer@robh.at.kernel.org>
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

On Sun, 08 May 2022 22:28:35 -0500, Daniel Kaehn wrote:
> Adds dt-binding for a Generic MIDI Interface using a serial device.
> 
> Signed-off-by: Daniel Kaehn <kaehndan@gmail.com>
> ---
>  .../bindings/sound/serial-midi.yaml           | 50 +++++++++++++++++++
>  1 file changed, 50 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/sound/serial-midi.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Documentation/devicetree/bindings/sound/serial-midi.example.dts:20.25-24.11: Warning (unit_address_vs_reg): /example-0/serial@7e201400: node has a unit name, but no reg or ranges property
Documentation/devicetree/bindings/sound/serial-midi.example.dts:25.25-30.11: Warning (unit_address_vs_reg): /example-0/serial@7e201600: node has a unit name, but no reg or ranges property

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

