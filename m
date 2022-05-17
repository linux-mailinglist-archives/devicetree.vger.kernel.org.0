Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 05DD152ACFD
	for <lists+devicetree@lfdr.de>; Tue, 17 May 2022 22:50:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240492AbiEQUuH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 May 2022 16:50:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37184 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232949AbiEQUuG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 May 2022 16:50:06 -0400
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com [209.85.167.170])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3316452E60
        for <devicetree@vger.kernel.org>; Tue, 17 May 2022 13:50:06 -0700 (PDT)
Received: by mail-oi1-f170.google.com with SMTP id w123so303381oiw.5
        for <devicetree@vger.kernel.org>; Tue, 17 May 2022 13:50:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=lsIHFCzwLofJhdAvCk391I5iPvxffu78DZuHDakexr4=;
        b=oySXYhM69GBjKiaK6tR9sWgyGlYmUqZ0yu+jP+5UUX2xWs6vi3/iTHdTETlXcvM1RC
         D30jm9gGfECWDKPBVxCsYgU7+mwVVrr8OIJ+hpXvgpg8OjrINDGSaYzBXXGZKFmLbPf8
         pHvuSxH94Ej1HyZmlh65TQog8YOMrnlBO2lmm21cK74+Zj08IOkZqtBc5sXd4+fT43rw
         gdvboD0c7rQyS4efRXwECZG7Wf6hi/YbxApTJYJdc2xeVT01hD5Ctvkl4r3L4jqbJLmU
         oCZaix7cfJ6+k45h6LAKMS0RLVuaJsI4PbOeaXL4wK27ze21PpILa9eamgUjTBPANSHl
         DCzg==
X-Gm-Message-State: AOAM530J0O7k6kwNEdFPt+FPOd+oPvINai0WWzp4AE7DDGNvGf0+chKe
        wJ1KboniiGnvram4VPdKHw==
X-Google-Smtp-Source: ABdhPJw1zGHMDmpvnpTKlQ8MgzQr4t324tc6yHdfnOLay987R77BN/JuSPX9DIS8M+Gy0ZTzNedm9g==
X-Received: by 2002:a05:6808:e8f:b0:2f7:6c1a:c1a with SMTP id k15-20020a0568080e8f00b002f76c1a0c1amr16441848oil.129.1652820605495;
        Tue, 17 May 2022 13:50:05 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id cv28-20020a056870c69c00b000e686d13881sm220118oab.27.2022.05.17.13.50.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 May 2022 13:50:04 -0700 (PDT)
Received: (nullmailer pid 1616262 invoked by uid 1000);
        Tue, 17 May 2022 20:50:04 -0000
Date:   Tue, 17 May 2022 15:50:04 -0500
From:   Rob Herring <robh@kernel.org>
To:     Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>
Cc:     Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, yuji2.ishikawa@toshiba.co.jp
Subject: Re: [PATCH 9/9] dt-bindings: pci: toshiba,visconti-pcie: Update the
 common clock properties
Message-ID: <20220517205004.GA1616201-robh@kernel.org>
References: <20220510015229.139818-1-nobuhiro1.iwamatsu@toshiba.co.jp>
 <20220510015229.139818-10-nobuhiro1.iwamatsu@toshiba.co.jp>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220510015229.139818-10-nobuhiro1.iwamatsu@toshiba.co.jp>
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

On Tue, 10 May 2022 10:52:29 +0900, Nobuhiro Iwamatsu wrote:
> The clock for this driver switched to the common clock controller driver.
> Therefore, update common clock properties for PCIe controller in the binding
> document.
> 
> Signed-off-by: Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>
> ---
>  .../devicetree/bindings/pci/toshiba,visconti-pcie.yaml         | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 

Acked-by: Rob Herring <robh@kernel.org>
