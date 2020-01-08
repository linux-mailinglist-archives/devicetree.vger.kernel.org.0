Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 227A11344E5
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2020 15:22:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726902AbgAHOWp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Jan 2020 09:22:45 -0500
Received: from mail-ot1-f68.google.com ([209.85.210.68]:43607 "EHLO
        mail-ot1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726319AbgAHOWp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Jan 2020 09:22:45 -0500
Received: by mail-ot1-f68.google.com with SMTP id p8so3695840oth.10
        for <devicetree@vger.kernel.org>; Wed, 08 Jan 2020 06:22:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=M8y8BO0K5anvHEqPlUm8ymjBDQnclkOVB7xmvdmunFM=;
        b=X+UCGyCsY8vpFW1bcwDw9osxjhXeIJL3qDe6/HRQMqIH0MtUR/UD0E/NWy4+RZfndE
         etcuKNUf8b2siXlY5evEYN8/fAw8MsjsvCpZrTBwAulifGhQB7gvS9TaHNgyV3rGL8xs
         5MJwM/GxT7CFcGAvfI21TLoy2dxyoV0PhF0RiGAzEBRVlX4jPCAW/720H+DyPO7NlLn0
         1MBS7T4ZXTloEnltSQbFY4vZWp8GwcvK1NDVMwXOyQVMAwTs5r5MxI7W4uBce9BBpzto
         mCFRtFZXKTRNjXa4+1GhzDZBmsNUoe37vbri2FwgRNZEzxUog+x9CaeEd3WMtEEILNQ5
         krIg==
X-Gm-Message-State: APjAAAX7beYmoMtjYWhFHwvgamGgVtPu2Lwkxaee7NC8Qe/FTeUQT2Ay
        vOjXOtMrDKoK1j34Rb9GP8PwMW8=
X-Google-Smtp-Source: APXvYqwSEJHVTGoNcRGX31KYEUcqOjoUKiQG/L/h8hUzQl/rFjpdiWXi5ldyfPq8aZbGCBYNoqGbPw==
X-Received: by 2002:a9d:32c7:: with SMTP id u65mr4461363otb.224.1578493363884;
        Wed, 08 Jan 2020 06:22:43 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id l17sm1178258ota.27.2020.01.08.06.22.42
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2020 06:22:43 -0800 (PST)
Received: from rob (uid 1000)
        (envelope-from rob@rob-hp-laptop)
        id 22001a
        by rob-hp-laptop (DragonFly Mail Agent v0.11);
        Wed, 08 Jan 2020 08:22:42 -0600
Date:   Wed, 8 Jan 2020 08:22:42 -0600
From:   Rob Herring <robh@kernel.org>
To:     Dilip Kota <eswara.kota@linux.intel.com>
Cc:     lorenzo.pieralisi@arm.com, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, jingoohan1@gmail.com,
        gustavo.pimentel@synopsys.com, andrew.murray@arm.com,
        robh@kernel.org, linux-kernel@vger.kernel.org,
        andriy.shevchenko@intel.com, cheol.yong.kim@intel.com,
        chuanhua.lei@linux.intel.com, qi-ming.wu@intel.com,
        Dilip Kota <eswara.kota@linux.intel.com>
Subject: Re: [PATCH 1/1] dt-bindings: PCI: intel: Fix dt_binding_check
 compilation failure
Message-ID: <20200108142242.GA8585@bogus>
References: <3319036bb29e0b25fc3b85293301e32aee0540dc.1576833842.git.eswara.kota@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3319036bb29e0b25fc3b85293301e32aee0540dc.1576833842.git.eswara.kota@linux.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 20 Dec 2019 17:53:24 +0800, Dilip Kota wrote:
> Remove <dt-bindings/clock/intel,lgm-clk.h> dependency as
> it is not present in the mainline tree. Use numeric value
> instead of LGM_GCLK_PCIE10 macro.
> 
> Signed-off-by: Dilip Kota <eswara.kota@linux.intel.com>
> ---
>  Documentation/devicetree/bindings/pci/intel-gw-pcie.yaml | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 

Acked-by: Rob Herring <robh@kernel.org>
