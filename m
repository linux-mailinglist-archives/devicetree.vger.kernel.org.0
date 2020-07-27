Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 68E2F22F73D
	for <lists+devicetree@lfdr.de>; Mon, 27 Jul 2020 20:03:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729184AbgG0SDJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Jul 2020 14:03:09 -0400
Received: from mail-il1-f193.google.com ([209.85.166.193]:37577 "EHLO
        mail-il1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729006AbgG0SDJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Jul 2020 14:03:09 -0400
Received: by mail-il1-f193.google.com with SMTP id r12so13877653ilh.4
        for <devicetree@vger.kernel.org>; Mon, 27 Jul 2020 11:03:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=RCNcjvwCoYUHXC7Yk0AFiXRgo47Lb1U99nkXBjcPUKY=;
        b=BFOt/qyoY1fHdkv2IdWePJ0vf7clkUK+DxgcirRLZblttSNoHwnywu45LBKJoTS9dH
         aRVepGK8Qo1sTKnQ9//GWM/K/oJ24GBgXO3kv7xJLBSgRg79kdXc9asYuAE6kqEJYrv0
         e2Dnsynb64mDY/bSg+ht3VqyEkQHCg7WGw7Gc3Zeym2TcidQ+oWZtO4/okAdrFTXDZJM
         8V7dWZI+yREXRyNdftg283KHRV3+YbnjTEwynTNrAy74H4moIhwpkx5CiRkdSPfmWWCm
         lUy+npD0TuRD2SlmWevQ7b16sYfcFmaHshiIrUz/xAh5EXN9MFez+mvkAAPMaqnfVh0U
         gF8g==
X-Gm-Message-State: AOAM533gNHeJS8IfCOSAO5g/6igc178isVvd71od7b1sNBOxmFQrTyfz
        tiKeFd2ZxCtf3xwteLrL6w==
X-Google-Smtp-Source: ABdhPJymM2Xuf2q5KMkZQzfccoLE7MnU8poHCTqxBV+bzuvVmW5uhyckKx9NScW8jPkW56Qxc9XftQ==
X-Received: by 2002:a92:7f04:: with SMTP id a4mr4206539ild.10.1595872987209;
        Mon, 27 Jul 2020 11:03:07 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
        by smtp.gmail.com with ESMTPSA id h1sm9286270iob.8.2020.07.27.11.03.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jul 2020 11:03:06 -0700 (PDT)
Received: (nullmailer pid 620488 invoked by uid 1000);
        Mon, 27 Jul 2020 18:03:04 -0000
Date:   Mon, 27 Jul 2020 12:03:04 -0600
From:   Rob Herring <robh@kernel.org>
To:     Lokesh Vutla <lokeshvutla@ti.com>
Cc:     Marc Zyngier <maz@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>,
        Santosh Shilimkar <ssantosh@kernel.org>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Sekhar Nori <nsekhar@ti.com>,
        Grygorii Strashko <grygorii.strashko@ti.com>,
        Peter Ujfalusi <peter.ujfalusi@ti.com>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Suman Anna <s-anna@ti.com>
Subject: Re: [PATCH v4 04/10] dt-bindings: irqchip: ti,sci-intr: Update
 bindings to drop the usage of gic as parent
Message-ID: <20200727180304.GA619600@bogus>
References: <20200725163700.20583-1-lokeshvutla@ti.com>
 <20200725163700.20583-5-lokeshvutla@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200725163700.20583-5-lokeshvutla@ti.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Jul 25, 2020 at 10:06:54PM +0530, Lokesh Vutla wrote:
> Drop the firmware related dt-bindings and use the hardware specified
> interrupt numbers within Interrupt Router. This ensures interrupt router
> DT node need not assume any interrupt parent type.
> 
> Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
> ---
>  .../interrupt-controller/ti,sci-intr.txt      | 31 ++++++++++---------
>  1 file changed, 16 insertions(+), 15 deletions(-)

Reviewed-by: Rob Herring <robh@kernel.org>
