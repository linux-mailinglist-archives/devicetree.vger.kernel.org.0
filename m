Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 414CE6D1047
	for <lists+devicetree@lfdr.de>; Thu, 30 Mar 2023 22:50:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229931AbjC3Uu5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Mar 2023 16:50:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51006 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229678AbjC3Uu4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Mar 2023 16:50:56 -0400
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com [209.85.167.180])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EC28072A3
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 13:50:55 -0700 (PDT)
Received: by mail-oi1-f180.google.com with SMTP id bl22so1234583oib.11
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 13:50:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680209455;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=iSrR/4Gk4S9c2a7Moq5Mdq3AKWmLJGZNw6jbQ7au9DA=;
        b=Rp/9GRmXmiutTif4KK+oNuq55s2VyRtvzqmm26SDEBtR0DQR7lbUlAZ8V2jo6IPxB2
         kukWMHFWt5iQdrfAAlM4y05eZFWxDDE9vZKhG1R41ct9Y+b8AsdnBh462kyAIPJDa96U
         PP7poE8cVk4l79rPSmZTlH2qf/ubgn4R66aGQGNLDnd7CUdpY3Xh8uQXexciPiQauvo4
         MOt8IQU9iLfrDf5A7bpOWggLx4R9Q1mHpj1SzD6M1oVguM/Tm28OL+oDBGXa0+rquwhg
         6xDy2GzMaK3BVYtw1kEKvvKeHQcXnt2BEA5sNJwFQIf8tzyrldDBBcC2RZ+lshg1LnBS
         KnIQ==
X-Gm-Message-State: AAQBX9eZFKIWmvxjmo+PtB4DPAfx5k7k8qacqh5I+QjJCa9VA30z5Tyu
        4jPcSO86JnoPjRuoxitT5it6nDBMow==
X-Google-Smtp-Source: AKy350bdHHV21iLPm41gDwmUEUfKk5KsEUstWlNhdLYdIinpA4mBrBOeNMvfXAJVTPxZsZRx3M98rw==
X-Received: by 2002:aca:1114:0:b0:386:9fff:b848 with SMTP id 20-20020aca1114000000b003869fffb848mr3214328oir.4.1680209455056;
        Thu, 30 Mar 2023 13:50:55 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id e15-20020a056830200f00b00697be532609sm331045otp.73.2023.03.30.13.50.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Mar 2023 13:50:54 -0700 (PDT)
Received: (nullmailer pid 2782001 invoked by uid 1000);
        Thu, 30 Mar 2023 20:50:54 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
MIME-Version: 1.0
From:   Rob Herring <robh@kernel.org>
To:     James Morse <james.morse@arm.com>
Cc:     devicetree@vger.kernel.org, Will Deacon <will@kernel.org>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Oliver Upton <oliver.upton@linux.dev>,
        Andre Przywara <andre.przywara@arm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        Catalin Marinas <catalin.marinas@arm.com>,
        Marc Zyngier <maz@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>
In-Reply-To: <20230330165128.3237939-2-james.morse@arm.com>
References: <20230330165128.3237939-1-james.morse@arm.com>
 <20230330165128.3237939-2-james.morse@arm.com>
Message-Id: <168020932256.2779369.8695788073285138890.robh@kernel.org>
Subject: Re: [PATCH 1/6] dt-bindings: firmware: Add arm,errata-management
Date:   Thu, 30 Mar 2023 15:50:54 -0500
X-Spam-Status: No, score=0.8 required=5.0 tests=FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Thu, 30 Mar 2023 17:51:23 +0100, James Morse wrote:
> The Errata Management SMCCC interface allows firmware to advertise whether
> the OS is affected by an erratum, or if a higher exception level has
> mitigated the issue. This allows properties of the device that are not
> discoverable by the OS to be described. e.g. some errata depend on the
> behaviour of the interconnect, which is not visible to the OS.
> 
> Deployed devices may find it significantly harder to update EL3
> firmware than the device tree. Erratum workarounds typically have to
> fail safe, and assume the platform is affected putting correctness
> above performance.
> 
> Instead of adding a device-tree entry for any CPU errata that is
> relevant (or not) to the platform, allow the device-tree to describe
> firmware's responses for the SMCCC interface. This could be used as
> the data source for the firmware interface, or be parsed by the OS if
> the firmware interface is missing.
> 
> Most errata can be detected from CPU id registers. These mechanisms
> are only needed for the rare cases that external knowledge is needed.
> 
> Suggested-by: Andre Przywara <andre.przywara@arm.com>
> Signed-off-by: James Morse <james.morse@arm.com>
> ---
>  .../devicetree/bindings/arm/cpus.yaml         |  5 ++
>  .../firmware/arm,errata-management.yaml       | 77 +++++++++++++++++++
>  2 files changed, 82 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/firmware/arm,errata-management.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:
./Documentation/devicetree/bindings/firmware/arm,errata-management.yaml:48:5: [warning] wrong indentation: expected 6 but found 4 (indentation)
./Documentation/devicetree/bindings/firmware/arm,errata-management.yaml:50:5: [warning] wrong indentation: expected 6 but found 4 (indentation)
./Documentation/devicetree/bindings/firmware/arm,errata-management.yaml:52:5: [warning] wrong indentation: expected 6 but found 4 (indentation)

dtschema/dtc warnings/errors:

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20230330165128.3237939-2-james.morse@arm.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.

