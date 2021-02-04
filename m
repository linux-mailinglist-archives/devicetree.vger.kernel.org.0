Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CE21B31010D
	for <lists+devicetree@lfdr.de>; Fri,  5 Feb 2021 00:51:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230388AbhBDXuk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 Feb 2021 18:50:40 -0500
Received: from mail-ot1-f46.google.com ([209.85.210.46]:46951 "EHLO
        mail-ot1-f46.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230360AbhBDXuj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 4 Feb 2021 18:50:39 -0500
Received: by mail-ot1-f46.google.com with SMTP id d1so5172042otl.13
        for <devicetree@vger.kernel.org>; Thu, 04 Feb 2021 15:50:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=PMsptqYIqD5iZXmtta7YGCdRe1Xas5h7vrld4B82Kks=;
        b=qGtm6ylgrsyc+nF8+vJufvNeA7xcxPNfWPJtpv+9t4dfr8LyXR7htQaTgMwIeAbePi
         QF9M28rm07zSlu+rcZeQGFAN6M/ttWoyc5XaErhpQTaHye8z4hknxeJwLOFqFIT4F/td
         SzOX4GSRyBTLAiviCAkSw9ouTqDQVaXqwCooq9dHrysuXD84wXX00heaZ5IZdB9EN5ZE
         OGMfLdWHGUSfvICnTKSvyKY6Cj5LpTanCxg8SjOITgtD6kVfAO6/pTEWSJyiySC8Ej1E
         fYMzPVxSb3/CHN4sEypwO/JjuDfyQWdWLNW92xeTUeVYCVq8PzvPYAHUzu4hV4NFCrhR
         9RqQ==
X-Gm-Message-State: AOAM533Ptp+81qn6wX6Ri5/swHfPR0ixlJbSg5ZEDxLiFsTNthWEGZLF
        tVEMfH0fMYNDz+urjDG41Q==
X-Google-Smtp-Source: ABdhPJyajLW+rMPwvk3zjI4HFUVp3XRUk0Cu/VdUT6woMy1fVYcj80m9+vKRhqB3S7n5fMiBfngW8A==
X-Received: by 2002:a9d:12e3:: with SMTP id g90mr1378466otg.92.1612482598270;
        Thu, 04 Feb 2021 15:49:58 -0800 (PST)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id w10sm1458169oih.8.2021.02.04.15.49.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Feb 2021 15:49:57 -0800 (PST)
Received: (nullmailer pid 1354613 invoked by uid 1000);
        Thu, 04 Feb 2021 23:49:56 -0000
Date:   Thu, 4 Feb 2021 17:49:56 -0600
From:   Rob Herring <robh@kernel.org>
To:     Damien Le Moal <damien.lemoal@wdc.com>
Cc:     Atish Patra <atish.patra@wdc.com>, Anup Patel <anup.patel@wdc.com>,
        devicetree@vger.kernel.org,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv@lists.infradead.org, Sean Anderson <seanga2@gmail.com>
Subject: Re: [PATCH v15 08/16] dt-bindings: add resets property to
 dw-apb-timer
Message-ID: <20210204234956.GA1354573@robh.at.kernel.org>
References: <20210203125913.390949-1-damien.lemoal@wdc.com>
 <20210203125913.390949-9-damien.lemoal@wdc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210203125913.390949-9-damien.lemoal@wdc.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 03 Feb 2021 21:59:05 +0900, Damien Le Moal wrote:
> The Synopsis DesignWare APB timer driver
> (drivers/clocksource/dw_apb_timer_of.c) indirectly uses the resets
> property of its node as it executes the function of_reset_control_get().
> Make sure that this property is documented in
> timer/snps,dw-apb-timer.yaml to avoid make dtbs_check warnings.
> 
> Cc: Daniel Lezcano <daniel.lezcano@linaro.org>
> Cc: Rob Herring <robh@kernel.org>
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
> Reviewed-by: Atish Patra <atish.patra@wdc.com>
> ---
>  Documentation/devicetree/bindings/timer/snps,dw-apb-timer.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
