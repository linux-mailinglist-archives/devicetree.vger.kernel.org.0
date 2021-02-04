Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 46BA931010C
	for <lists+devicetree@lfdr.de>; Fri,  5 Feb 2021 00:51:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231136AbhBDXuR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 Feb 2021 18:50:17 -0500
Received: from mail-ot1-f47.google.com ([209.85.210.47]:34140 "EHLO
        mail-ot1-f47.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230527AbhBDXuP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 4 Feb 2021 18:50:15 -0500
Received: by mail-ot1-f47.google.com with SMTP id y11so5244254otq.1
        for <devicetree@vger.kernel.org>; Thu, 04 Feb 2021 15:50:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Wfc6OWt3/EEd+TT0SP5EcWzrZ9Xt8YHduHtrMS54NhE=;
        b=RAMYpk0uXqOvHLVeRNXyajlnnnSwXTy7hKyrUUnAc/+sTIZ614gEIaoOuolMmwG7oQ
         ryD1rQnTS4LaHR0iV7QUzOBQs6ZXKmzunm4o5R0RgyUDt7OpLKRdJ1/Bw35bngpX3ypd
         vyYVT1L38khnWAO2BBHg5mYODbNOqRNtdgsoefdEI1EjO96HiVwo0RFCkcX4AfuCd+Xm
         HsxjobNDPkeF4E7ZcV5tG9RW1KkFitXuyal74JrX5xWyRlh3SUcKpGrjVgQgUkG7U1oO
         Y/iJKDjdjF0fBP2FGvbLXgpwOBJ/YDt3EJSCV74zp4jooaWCwJGLgFCZHO2w5SiApF58
         UBGQ==
X-Gm-Message-State: AOAM5312p6fJbmmrL2sfr0Jrscj5mlHpNz9f7NOvp3NTXhOVvVanpEmT
        uhywFloVjfdoURD2JE30Lg==
X-Google-Smtp-Source: ABdhPJx0bduAnwbiUeIsCOdD/yJEJn302gjjzNnoYp0hzjtDbYX/c5WdqG1LWIzDW/Ztk6J/dmDYzg==
X-Received: by 2002:a9d:71c6:: with SMTP id z6mr1425886otj.276.1612482574773;
        Thu, 04 Feb 2021 15:49:34 -0800 (PST)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id l110sm1456406otc.25.2021.02.04.15.49.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Feb 2021 15:49:33 -0800 (PST)
Received: (nullmailer pid 1353799 invoked by uid 1000);
        Thu, 04 Feb 2021 23:49:32 -0000
Date:   Thu, 4 Feb 2021 17:49:32 -0600
From:   Rob Herring <robh@kernel.org>
To:     Damien Le Moal <damien.lemoal@wdc.com>
Cc:     linux-riscv@lists.infradead.org, Anup Patel <anup.patel@wdc.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        devicetree@vger.kernel.org, Sean Anderson <seanga2@gmail.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Atish Patra <atish.patra@wdc.com>
Subject: Re: [PATCH v15 06/16] dt-bindings: update sifive uart compatible
 string
Message-ID: <20210204234932.GA1353742@robh.at.kernel.org>
References: <20210203125913.390949-1-damien.lemoal@wdc.com>
 <20210203125913.390949-7-damien.lemoal@wdc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210203125913.390949-7-damien.lemoal@wdc.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 03 Feb 2021 21:59:03 +0900, Damien Le Moal wrote:
> Add the compatible string "canaan,k210-uarths" to the sifive uart
> bindings to indicate the use of this IP block in the Canaan Kendryte
> K210 SoC.
> 
> Cc: Paul Walmsley <paul.walmsley@sifive.com>
> Cc: Rob Herring <robh@kernel.org>
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
> Reviewed-by: Atish Patra <atish.patra@wdc.com>
> ---
>  Documentation/devicetree/bindings/serial/sifive-serial.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
