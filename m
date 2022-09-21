Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D1BAD5BFEEE
	for <lists+devicetree@lfdr.de>; Wed, 21 Sep 2022 15:27:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229590AbiIUN1R (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Sep 2022 09:27:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49334 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229862AbiIUN1O (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Sep 2022 09:27:14 -0400
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 34B8E8E0E3
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 06:27:13 -0700 (PDT)
Received: by mail-lj1-x233.google.com with SMTP id x29so7023689ljq.2
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 06:27:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date;
        bh=lmj7jicn614gWMrvYlZX1n0o3N0zq9+Ltb+g9nTaM1A=;
        b=DFuxLBF4qBEMFozotg2T+uPQU5no0gAdWavOTHDLPJL3HW5YKeKA/so9dVM/PBD0xN
         tUiIFGXvGGdHr1Kl1f0yojm048xdSTD/0b3MjCHNlXmXUvzo/5HUA1IUEI4qMqax8nTL
         The5+WnfmhTAdOaPgZwG5klaLIXaOdxE3R8oTc0y/pkdG9jzZHfCtgfOLcXiVlTF038j
         7sgGHpecxGRWiAYqmmTxfJAKexYoPkYm7Rue/kkBVm9F+ZOU0DhjxBmHX7w64UbwWBLQ
         g4GdCtz9KROySaHWgoIRuDS9SG+pCwfRCucoi+er6YOm9eY5ZYv8HHlwP5K731zTOb+G
         IL9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date;
        bh=lmj7jicn614gWMrvYlZX1n0o3N0zq9+Ltb+g9nTaM1A=;
        b=CLf919oVu6LDYBxNTtNMQkQNVGJ3zKeIkndI/Txkwswo3TT0hGUjFuVSeGRBUjzbtC
         HDUDEHia1jk58QYHRDw0799i0nq5BLf5I4/XwV50eL/Ve0yPM2xWF9I9PXGE6MUPhuPv
         1hSeJSJu7AB50kmf+AhC3OR0xHkwqi5S1i+qlMgSMnd0yaG/OnXbHygc+XSaFTWEmLiy
         xdFqN7BJT3bJs7mhMczUmlmzRM76/adIzA6jqHqtgt+1dGEAsZKaa8nULabGGds325T9
         jdZdGkfo2wXrgdsGKrxDJpqFDKeZDFeAH5V2ErLGw1mJGiYazTSVmXghM1cG/TRur4IT
         cw/g==
X-Gm-Message-State: ACrzQf1xYkDXI2haps7RpywXvAtzmGoaLw/DX6sHgv6k/53UaNjuEuwm
        Dota7ubeWhLkJWnF36JTTg8N+sltTJoSUg==
X-Google-Smtp-Source: AMsMyM5L04y2iXo0UZMj9UeVFEGkAY6iRMs5l0eUSyPHxRBOKFGn4mGGyGQ+6DnG1kO8kmmsvPr1Dg==
X-Received: by 2002:a2e:a5c6:0:b0:25e:223f:a417 with SMTP id n6-20020a2ea5c6000000b0025e223fa417mr9731874ljp.236.1663766831127;
        Wed, 21 Sep 2022 06:27:11 -0700 (PDT)
Received: from krzk-bin (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id u18-20020a2eb812000000b0026c4113c160sm419701ljo.109.2022.09.21.06.27.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Sep 2022 06:27:10 -0700 (PDT)
Date:   Wed, 21 Sep 2022 15:27:08 +0200
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>
Cc:     robh+dt@kernel.org, will@kernel.org, devicetree@vger.kernel.org,
        git@amd.com, mark.rutland@arm.com, michal.simek@xilinx.com,
        linux-arm-kernel@lists.infradead.org,
        krzysztof.kozlowski+dt@linaro.org
Subject: Re: [RFC PATCH 1/2]  dt-bindings: Add the binding doc for xilinx APM
Message-ID: <20220921132708.32rlikdfqxlmyfbu@krzk-bin>
References: <20220921080623.22077-1-shubhrajyoti.datta@amd.com>
 <20220921080623.22077-2-shubhrajyoti.datta@amd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20220921080623.22077-2-shubhrajyoti.datta@amd.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 21 Sep 2022 13:36:22 +0530, Shubhrajyoti Datta wrote:
> The LogiCORE=E2=84=A2 IP AXI Performance Monitor core enables AXI system
> performance measurement for multiple slots (AXI4/AXI3/AXI4-Stream/
> AXI4-Lite) activity. Add the devicetree binding for xilinx APM.
>=20
> Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>
> ---
>  .../bindings/perf/xlnx-axi-perf-monitor.yaml  | 137 ++++++++++++++++++
>  1 file changed, 137 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/perf/xlnx-axi-perf-=
monitor.yaml
>=20

My bot found errors running 'make DT_CHECKER_FLAGS=3D-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
=2E/Documentation/devicetree/bindings/perf/xlnx-axi-perf-monitor.yaml: $id:=
 relative path/filename doesn't match actual path or filename
	expected: http://devicetree.org/schemas/perf/xlnx-axi-perf-monitor.yaml#

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.
