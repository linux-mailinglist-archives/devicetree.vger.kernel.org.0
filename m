Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DF62C4783C4
	for <lists+devicetree@lfdr.de>; Fri, 17 Dec 2021 04:47:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232566AbhLQDri (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Dec 2021 22:47:38 -0500
Received: from mail-oi1-f172.google.com ([209.85.167.172]:42682 "EHLO
        mail-oi1-f172.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231143AbhLQDrh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Dec 2021 22:47:37 -0500
Received: by mail-oi1-f172.google.com with SMTP id p4so1782157oia.9
        for <devicetree@vger.kernel.org>; Thu, 16 Dec 2021 19:47:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=mW9YzrPYla+gDOhONRNpteONdJsGeQmsxco3FWyFKvY=;
        b=LnamZsknMsQod3cKOfFPSdbnmP0W3QrGoZHM1YqZN06eZDmohxTfqJgadjhWSKvt+H
         53Se5Uq9QipRlIgaWK+VaL2Uwx8HSbGYIDrwbHR6hn2g/axoXHSL1hv63F796A6FwC8o
         rZReCEy9FiVEPQn/PoXwlmo0xTD819zKQESdSZa4eivYaydr3Y72PPXgz2uXDGZ6ciqQ
         lOsZyVh2RZ1bUO9yRFak0ILo/TAp2uK10F+T+ySHobZiaJCxkQPh+Otf0r9+owQrDyaR
         Wz7H+4S9H+OXvxnx5Uv1egEXWsCANTdFuPJcQUgh7eNfZynI11v39knIUC2SXZidZ/HQ
         k7SA==
X-Gm-Message-State: AOAM530ZxdbAMgBAPx8iFosUgXBcpiJ72p+2DYrcIr6JfYy4SGZjTI0r
        K+FTjibN/D84YMiNKL7zrq7WIbW+bg==
X-Google-Smtp-Source: ABdhPJzOeSChaObWEwR8bSJmrftQEnLVemeeU8yLMAM9CSVVFkhzf+vY0ViS0YqXT67hPsAAC7TqjA==
X-Received: by 2002:a54:4789:: with SMTP id o9mr6591663oic.74.1639712856803;
        Thu, 16 Dec 2021 19:47:36 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id a16sm1395264otj.79.2021.12.16.19.47.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Dec 2021 19:47:36 -0800 (PST)
Received: (nullmailer pid 1677949 invoked by uid 1000);
        Fri, 17 Dec 2021 03:47:33 -0000
From:   Rob Herring <robh@kernel.org>
To:     Dinh Nguyen <dinguyen@kernel.org>
Cc:     robh+dt@kernel.org, p.yadav@ti.com, devicetree@vger.kernel.org
In-Reply-To: <20211216224902.374403-2-dinguyen@kernel.org>
References: <20211216224902.374403-1-dinguyen@kernel.org> <20211216224902.374403-2-dinguyen@kernel.org>
Subject: Re: [PATCHv3 1/2] dt-bindings: spi: cadence-quadspi: document "intel,socfpga-qspi"
Date:   Thu, 16 Dec 2021 21:47:33 -0600
Message-Id: <1639712853.398217.1677948.nullmailer@robh.at.kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 16 Dec 2021 16:49:01 -0600, Dinh Nguyen wrote:
> The QSPI controller on Intel's SoCFPGA platform does not implement the
> CQSPI_REG_WR_COMPLETION_CTRL register, thus a write to this register
> results in a crash.
> 
> Introduce the dts compatible "intel,socfpga-qspi" to differentiate the
> hardware.
> 
> Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
> ---
> v3: revert to "intel,socfpga-qspi"
> v2: change binding to "cdns,qspi-nor-0010" to be more generic for other
>     platforms
> ---
>  Documentation/devicetree/bindings/spi/cdns,qspi-nor.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Running 'make dtbs_check' with the schema in this patch gives the
following warnings. Consider if they are expected or the schema is
incorrect. These may not be new warnings.

Note that it is not yet a requirement to have 0 warnings for dtbs_check.
This will change in the future.

Full log is available here: https://patchwork.ozlabs.org/patch/1569624


spi@ff705000: resets: [[6, 37]] is too short
	arch/arm/boot/dts/socfpga_arria5_socdk.dt.yaml
	arch/arm/boot/dts/socfpga_cyclone5_chameleon96.dt.yaml
	arch/arm/boot/dts/socfpga_cyclone5_de0_nano_soc.dt.yaml
	arch/arm/boot/dts/socfpga_cyclone5_mcvevk.dt.yaml
	arch/arm/boot/dts/socfpga_cyclone5_socdk.dt.yaml
	arch/arm/boot/dts/socfpga_cyclone5_sockit.dt.yaml
	arch/arm/boot/dts/socfpga_cyclone5_socrates.dt.yaml
	arch/arm/boot/dts/socfpga_cyclone5_sodia.dt.yaml
	arch/arm/boot/dts/socfpga_cyclone5_vining_fpga.dt.yaml
	arch/arm/boot/dts/socfpga_vt.dt.yaml

