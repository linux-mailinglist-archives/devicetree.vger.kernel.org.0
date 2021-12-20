Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D776447AB3F
	for <lists+devicetree@lfdr.de>; Mon, 20 Dec 2021 15:27:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233451AbhLTO1q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Dec 2021 09:27:46 -0500
Received: from mail-oo1-f53.google.com ([209.85.161.53]:44681 "EHLO
        mail-oo1-f53.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230477AbhLTO1q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Dec 2021 09:27:46 -0500
Received: by mail-oo1-f53.google.com with SMTP id t9-20020a4a8589000000b002c5c4d19723so3100723ooh.11
        for <devicetree@vger.kernel.org>; Mon, 20 Dec 2021 06:27:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=Y1Fcs4t+UtdLO20EaOlKh13hRPU6qA8it6kK1OWCPEY=;
        b=ysjNvuxJ2eCE9Mg6caxEuP+IcT3+XlxoTnYoS2lBHqKOoIlj3zE11uWBuDCcl36K9n
         hTIYoym3B5hoTTr3EWC1YPpgkf/VbmGrX2QY3D/z3OdyjPwmtUwi2ko05UaGgXd5dM8x
         wvJ9ofZ8YZLicwyCu9Kzcf3JO4MVjhDDdPUTYWzwGAMqIwPdb6OgTzatErUsALEP1XgW
         //m7Ll5l99dQmYddS0IIXqoMjS9LBT9YUt9HUj/j/Vl2Fp+NpKZzonA0ZPmCFqoymp6U
         BO7PGO7ZAA29/4t9tYZ9DE8OGc1+eoPk/hs8f5xxN3bNIdfB+86jvYnqhmYysQaDzt20
         VRyw==
X-Gm-Message-State: AOAM530ztYCy5s74ogP8hzKmclKusXk897vmEHy+4A71oHEAr8ssKIqJ
        GroUvyAGbFCluykngwMukQ==
X-Google-Smtp-Source: ABdhPJyOpmklZ25MWSq9fd1Qj1gymdAdTprfXup4FhgZ3KkOBjlSDYRAuJTWwm2JMIlitSZ80VgO3g==
X-Received: by 2002:a4a:e288:: with SMTP id k8mr10224338oot.23.1640010465884;
        Mon, 20 Dec 2021 06:27:45 -0800 (PST)
Received: from robh.at.kernel.org ([12.252.7.226])
        by smtp.gmail.com with ESMTPSA id bq5sm3544930oib.55.2021.12.20.06.27.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Dec 2021 06:27:45 -0800 (PST)
Received: (nullmailer pid 3388819 invoked by uid 1000);
        Mon, 20 Dec 2021 14:27:43 -0000
From:   Rob Herring <robh@kernel.org>
To:     Sascha Hauer <s.hauer@pengutronix.de>
Cc:     =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
        Peter Geis <pgwipeout@gmail.com>,
        linux-arm-kernel@lists.infradead.org,
        dri-devel@lists.freedesktop.org,
        linux-rockchip@lists.infradead.org,
        Andy Yan <andy.yan@rock-chips.com>, kernel@pengutronix.de,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        devicetree@vger.kernel.org,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sandy Huang <hjc@rock-chips.com>
In-Reply-To: <20211220110630.3521121-9-s.hauer@pengutronix.de>
References: <20211220110630.3521121-1-s.hauer@pengutronix.de> <20211220110630.3521121-9-s.hauer@pengutronix.de>
Subject: Re: [PATCH 08/22] dt-bindings: display: rockchip: dw-hdmi: use "ref" as clock name
Date:   Mon, 20 Dec 2021 08:27:43 -0600
Message-Id: <1640010463.847707.3388818.nullmailer@robh.at.kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 20 Dec 2021 12:06:16 +0100, Sascha Hauer wrote:
> "vpll" is a misnomer. A clock input to a device should be named after
> the usage in the device, not after the clock that drives it. On the
> rk3568 the same clock is driven by the HPLL.
> To fix that, this patch renames the vpll clock to ref clock.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  .../bindings/display/rockchip/rockchip,dw-hdmi.yaml        | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml: properties:clock-names:items: 'oneOf' conditional failed, one must be fixed:
	[{}, {}, {'enum': ['cec', 'grf', 'ref']}, {'enum': ['grf', 'ref']}, {'const': ['ref']}] is not of type 'object'
	['ref'] is not of type 'string'
	from schema $id: http://devicetree.org/meta-schemas/string-array.yaml#
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml: ignoring, error in schema: properties: clock-names: items
warning: no schema found in file: ./Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.example.dt.yaml:0:0: /example-0/hdmi@ff980000: failed to match any schema with compatible: ['rockchip,rk3288-dw-hdmi']

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/1570972

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

