Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3A01435E265
	for <lists+devicetree@lfdr.de>; Tue, 13 Apr 2021 17:12:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242857AbhDMPMf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Apr 2021 11:12:35 -0400
Received: from mail-oi1-f173.google.com ([209.85.167.173]:46694 "EHLO
        mail-oi1-f173.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242445AbhDMPMf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Apr 2021 11:12:35 -0400
Received: by mail-oi1-f173.google.com with SMTP id m13so17290571oiw.13
        for <devicetree@vger.kernel.org>; Tue, 13 Apr 2021 08:12:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=22TlbBmLcZtJdq+EGatr2lL7zH0xUnGZei/eZL48P9I=;
        b=VqimbcqerCh5zQh/MHOSbeansPQKzhJrT3JXD4YhAfxOIsltpnGvcxErsG3cYfh/44
         bUPbGrrHiZz0bVJvlg6MynmMYYlPHYgVcjZI2I9DKoILoFpa6mxWDZ1PBoxHl7Vesm3b
         +Ht1UB7QgSZ4D79MWaZhu736dA6FdwT36UZ/k/UNsxaL1WMzRZ3fORqpY4/gY/iwdSnd
         P+GbLT/c7VAy9tyQXLOZ2CpWEecKartaLK+oHbXi2Lhx/Y+KnmxBuHX5/RIIkFzypDvs
         bAlf4uN3fxZzycWWPdWG8WM+FDWV2UEhZ+Q4SJWwYZzMaDKxriPWVSiqPJkKk2JDW26V
         J7TQ==
X-Gm-Message-State: AOAM533bduYZ8SdW5W7vviCwyJ00sR9oy0v0GD5q3jesB1lVSnIxzHz6
        Cez2Aggruhcad0IvWcgh5g==
X-Google-Smtp-Source: ABdhPJyIaSH+KUgDkSq0CLMTGB179U2mn6l1vPdGqztSpb5/2veBtPqLM/Saoij4gtSzzvS5TSMuqg==
X-Received: by 2002:aca:c304:: with SMTP id t4mr351454oif.125.1618326735162;
        Tue, 13 Apr 2021 08:12:15 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id n25sm544750oop.13.2021.04.13.08.12.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Apr 2021 08:12:14 -0700 (PDT)
Received: (nullmailer pid 1689345 invoked by uid 1000);
        Tue, 13 Apr 2021 15:12:13 -0000
Date:   Tue, 13 Apr 2021 10:12:13 -0500
From:   Rob Herring <robh@kernel.org>
To:     conor.dooley@microchip.com
Cc:     lewis.hanly@microchip.com, j.neuschaefer@gmx.net,
        cyril.jean@microchip.com, damien.lemoal@wdc.com,
        jassisinghbrar@gmail.com, anup.patel@wdc.com,
        devicetree@vger.kernel.org, palmer@dabbelt.com,
        aou@eecs.berkeley.edu, daire.mcnamara@microchip.com,
        robh+dt@kernel.org, david.abdurachmanov@gmail.com,
        paul.walmsley@sifive.com, atish.patra@wdc.com,
        linux-riscv@lists.infradead.org
Subject: Re: [PATCH v5 1/5] dt-bindings: add bindings for polarfire soc
 mailbox
Message-ID: <20210413151213.GA1689282@robh.at.kernel.org>
References: <20210412160358.19309-1-conor.dooley@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210412160358.19309-1-conor.dooley@microchip.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 12 Apr 2021 17:03:58 +0100, conor.dooley@microchip.com wrote:
> From: Conor Dooley <conor.dooley@microchip.com>
> 
> Add device tree bindings for the MSS system controller mailbox on
> the Microchip PolarFire SoC.
> 
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> ---
>  .../microchip,polarfire-soc-mailbox.yaml      | 47 +++++++++++++++++++
>  1 file changed, 47 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mailbox/microchip,polarfire-soc-mailbox.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
