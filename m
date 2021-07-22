Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0A4113D25E9
	for <lists+devicetree@lfdr.de>; Thu, 22 Jul 2021 16:37:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232427AbhGVN4w (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Jul 2021 09:56:52 -0400
Received: from mail-il1-f172.google.com ([209.85.166.172]:33750 "EHLO
        mail-il1-f172.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232439AbhGVN4u (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Jul 2021 09:56:50 -0400
Received: by mail-il1-f172.google.com with SMTP id z1so5621368ils.0
        for <devicetree@vger.kernel.org>; Thu, 22 Jul 2021 07:37:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=vvBcjkZ9qL0BLV4GSAcEz8w3wUCj1nCar+2bEKQ5zDM=;
        b=Uf/kUt5C+fgXnyKb/dAoDL6Yo5Q/e4dwHkd5C/MCJlmqKgerMuD/EOEsEjuZeDzRMg
         LoURnqc4YW30Jc6/o0o250H32kNWJ+2JEjz9vCt2u5/d60gb6MDaq88ppiJZNj9PE20A
         vnKZ97J/Fzqu6Wuu04sKOw4uh/WlSAa2Ldv0MDmPBDyvxwzcCUmi0IaKdboCpnZs7WKh
         9MgavuWMrwYeciQDwSpl6hqSaAJdkTS6pAMz2GSkjavjDkWOeskx6QHO594Ln20hqdaa
         xTg14astHQ3yHLOC03MXS4wfuccADAh8y2M0HW1AmkVDMjJGNoO2KLgDxZ8wWC1tW9YV
         Y7SQ==
X-Gm-Message-State: AOAM532Ghg2W8+QS6FWjKnkco54owFhweJ97dYM0Y6dQi0ErMJVVD6jR
        tjYa4RuUWdIbLZnyUWCtLw==
X-Google-Smtp-Source: ABdhPJy8dkQE8KaRNcCupS57aVJsDG3HEW8dG0+67n3bDv1KcsDwON9X6f1cjhqD76tDxkVf8BNHVA==
X-Received: by 2002:a92:d152:: with SMTP id t18mr142759ilg.34.1626964645774;
        Thu, 22 Jul 2021 07:37:25 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id r6sm16471647ioh.27.2021.07.22.07.37.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Jul 2021 07:37:25 -0700 (PDT)
Received: (nullmailer pid 4183869 invoked by uid 1000);
        Thu, 22 Jul 2021 14:37:12 -0000
From:   Rob Herring <robh@kernel.org>
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Adam Ford <aford173@gmail.com>, Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, Peng Fan <peng.fan@nxp.com>,
        Shawn Guo <shawnguo@kernel.org>, Marek Vasut <marex@denx.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        patchwork-lst@pengutronix.de, kernel@pengutronix.de
In-Reply-To: <20210721204703.1424034-12-l.stach@pengutronix.de>
References: <20210716232916.3572966-1-l.stach@pengutronix.de> <20210721204703.1424034-1-l.stach@pengutronix.de> <20210721204703.1424034-12-l.stach@pengutronix.de>
Subject: Re: [PATCH v2 11/18] dt-bindings: soc: add binding for i.MX8MM DISP blk-ctrl
Date:   Thu, 22 Jul 2021 08:37:12 -0600
Message-Id: <1626964632.942029.4183868.nullmailer@robh.at.kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 21 Jul 2021 22:46:56 +0200, Lucas Stach wrote:
> This adds the DT binding for the i.MX8MM VPU blk-ctrl.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  .../soc/imx/fsl,imx8mm-disp-blk-ctrl.yaml     | 94 +++++++++++++++++++
>  1 file changed, 94 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/soc/imx/fsl,imx8mm-disp-blk-ctrl.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/soc/imx/fsl,imx8mm-disp-blk-ctrl.example.dt.yaml: blk_ctrl@32e28000: '#power-domain-cells' does not match any of the regexes: 'pinctrl-[0-9]+'
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/soc/imx/fsl,imx8mm-disp-blk-ctrl.yaml
\ndoc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/1508456

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

