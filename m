Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6D04346D4A4
	for <lists+devicetree@lfdr.de>; Wed,  8 Dec 2021 14:44:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234680AbhLHNsQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Dec 2021 08:48:16 -0500
Received: from mail-oi1-f171.google.com ([209.85.167.171]:35713 "EHLO
        mail-oi1-f171.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234640AbhLHNsL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Dec 2021 08:48:11 -0500
Received: by mail-oi1-f171.google.com with SMTP id m6so4216701oim.2
        for <devicetree@vger.kernel.org>; Wed, 08 Dec 2021 05:44:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=z+Kkqa49Eb0mJ9fc4D+xOUrJNAJs/6p5WWReX6xnZBw=;
        b=nrf9yVoU3lsW16TSAqzFIl1qSSdUuxpQXL5c/GE+zX2MivLm5cXPmLB/NBZwRv74PA
         Qlu1uH8aERrtXEpIu1XcldqYZVVQMadvbAro4IL10Z//xJvdXpcps0giPBFNhDeOQoXJ
         1mTp1/o3bncj+VdXfGiWVlgSpzocMmjhefEr53bIRdtNNuT3ZVdON1cMv2kDohfGgpHT
         +jwMaJGF95gyM2c4G0DQ151vMHvCT5qjtKEJD3dyEnQ0y0KAB9MXFCROjppGEidHdQ2h
         phtYXUqf+oAmShHryR32/pB4ubiHS5dTtzncSI4NhUhTQOcRzCRZIs04FA4GU+N7OKJx
         aULA==
X-Gm-Message-State: AOAM532vCEN578XndJmnKsPCBdow5ZRYzvvfTtVJg/e6QMmC4l/pbUq2
        GhfcLdjvKpKg96eDDE/jKA==
X-Google-Smtp-Source: ABdhPJxWeCQdOf2cEzd2UfwGTxIDI0rYi6NS4badygRgF87d/iOcIHkR0rnxehYXGYuSQFVr4kapGw==
X-Received: by 2002:a05:6808:a1b:: with SMTP id n27mr11588567oij.111.1638971078812;
        Wed, 08 Dec 2021 05:44:38 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id t12sm474637oor.21.2021.12.08.05.44.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Dec 2021 05:44:38 -0800 (PST)
Received: (nullmailer pid 3857726 invoked by uid 1000);
        Wed, 08 Dec 2021 13:44:28 -0000
From:   Rob Herring <robh@kernel.org>
To:     Robin Murphy <robin.murphy@arm.com>
Cc:     devicetree@vger.kernel.org, suzuki.poulose@arm.com,
        linux-arm-kernel@lists.infradead.org, mark.rutland@arm.com,
        thierry.reding@gmail.com, will@kernel.org, robh+dt@kernel.org,
        catalin.marinas@arm.com
In-Reply-To: <9530f441a62c72c5a22a7b555ea42bbcd3b145a1.1638900542.git.robin.murphy@arm.com>
References: <cover.1638900542.git.robin.murphy@arm.com> <9530f441a62c72c5a22a7b555ea42bbcd3b145a1.1638900542.git.robin.murphy@arm.com>
Subject: Re: [PATCH 4/5] dt-bindings: perf: Convert Arm DSU to schema
Date:   Wed, 08 Dec 2021 07:44:28 -0600
Message-Id: <1638971068.709003.3857725.nullmailer@robh.at.kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 07 Dec 2021 18:20:42 +0000, Robin Murphy wrote:
> Convert the DSU binding to schema, as one does.
> 
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
>  .../devicetree/bindings/arm/arm-dsu-pmu.txt   | 27 ------------
>  .../devicetree/bindings/perf/arm,dsu-pmu.yaml | 41 +++++++++++++++++++
>  2 files changed, 41 insertions(+), 27 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/arm/arm-dsu-pmu.txt
>  create mode 100644 Documentation/devicetree/bindings/perf/arm,dsu-pmu.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/perf/arm,dsu-pmu.yaml: properties:cpus: 'minitems' is not one of ['$ref', 'additionalItems', 'additionalProperties', 'allOf', 'anyOf', 'const', 'contains', 'default', 'dependencies', 'dependentRequired', 'dependentSchemas', 'deprecated', 'description', 'else', 'enum', 'exclusiveMaximum', 'exclusiveMinimum', 'items', 'if', 'minItems', 'minimum', 'maxItems', 'maximum', 'multipleOf', 'not', 'oneOf', 'pattern', 'patternProperties', 'properties', 'required', 'then', 'type', 'typeSize', 'unevaluatedProperties', 'uniqueItems']
	from schema $id: http://devicetree.org/meta-schemas/keywords.yaml#
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/perf/arm,dsu-pmu.yaml: properties:cpus: 'maxitems' is not one of ['$ref', 'additionalItems', 'additionalProperties', 'allOf', 'anyOf', 'const', 'contains', 'default', 'dependencies', 'dependentRequired', 'dependentSchemas', 'deprecated', 'description', 'else', 'enum', 'exclusiveMaximum', 'exclusiveMinimum', 'items', 'if', 'minItems', 'minimum', 'maxItems', 'maximum', 'multipleOf', 'not', 'oneOf', 'pattern', 'patternProperties', 'properties', 'required', 'then', 'type', 'typeSize', 'unevaluatedProperties', 'uniqueItems']
	from schema $id: http://devicetree.org/meta-schemas/keywords.yaml#
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/perf/arm,dsu-pmu.yaml: ignoring, error in schema: properties: cpus
warning: no schema found in file: ./Documentation/devicetree/bindings/perf/arm,dsu-pmu.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/1564818

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

