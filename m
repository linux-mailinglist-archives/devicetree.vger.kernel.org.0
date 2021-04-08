Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0083E358E2A
	for <lists+devicetree@lfdr.de>; Thu,  8 Apr 2021 22:15:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231451AbhDHUOa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Apr 2021 16:14:30 -0400
Received: from mail-ot1-f47.google.com ([209.85.210.47]:40482 "EHLO
        mail-ot1-f47.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231699AbhDHUO0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Apr 2021 16:14:26 -0400
Received: by mail-ot1-f47.google.com with SMTP id w31-20020a9d36220000b02901f2cbfc9743so3552118otb.7
        for <devicetree@vger.kernel.org>; Thu, 08 Apr 2021 13:14:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=kF/2gzNWXZYzjhyhrvTOKlv6ftUatvzkqRcb+X7Ci1U=;
        b=qu2FgEM+H6M0XiJgJfLjKUM7llUtBeZdkV0qbjXyDd6YBcCgDx862xFSQAxfinST8k
         KK1IgFmvu6EcCjMfa2cDg1c0ccQ2XADoj6g2ETUVl6HcfMDh0bSPGf9hpXsJJ1qaxnqN
         JdXx8iRXQ96k+Gt1cd27TD/lqZl+TSZwk5aUY67y+Uoo5NoLwAhApKHTRXqbq1QvcI02
         0ZV1X4XU0Me5nXKvGnMlziKVBIdYbNtpODRrPIxWQWgRQqvmS6KWUqYxptUDNRPSWsbX
         +oI91tpeUt9hdnri0wUY0pjJ537gEq2Wb9qxOhn2vNlMBCCTO2wXbCHv5aLqsFKqeTVq
         KO3A==
X-Gm-Message-State: AOAM531n/eFpmNDQsdaXa4zr2KOTFNe4yUu0MkE4fr8LHKoLCGfFCb91
        3tZsL7Z7m8XeIjVfofajuw==
X-Google-Smtp-Source: ABdhPJz6ADk3WKE2qO9z6qpLwj70twGGhCiERhzw91+xnsnZ8XkgWxxpiM5MoTXEtnLGFduMtzaWyw==
X-Received: by 2002:a9d:4c8f:: with SMTP id m15mr9003704otf.16.1617912854664;
        Thu, 08 Apr 2021 13:14:14 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id q10sm96884ooo.34.2021.04.08.13.14.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Apr 2021 13:14:14 -0700 (PDT)
Received: (nullmailer pid 1887363 invoked by uid 1000);
        Thu, 08 Apr 2021 20:14:12 -0000
Date:   Thu, 8 Apr 2021 15:14:12 -0500
From:   Rob Herring <robh@kernel.org>
To:     Ivan Uvarov <i.uvarov@cognitivepilot.com>
Cc:     Andre Przywara <andre.przywara@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Chen-Yu Tsai <wens@csie.org>, devicetree@vger.kernel.org,
        Icenowy Zheng <icenowy@aosc.io>,
        Maxime Ripard <mripard@kernel.org>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v4 3/5] dt-bindings: add compatible vendor prefix for
 Forlinx
Message-ID: <20210408201412.GA1887265@robh.at.kernel.org>
References: <20210407111428.3755684-1-i.uvarov@cognitivepilot.com>
 <20210407111428.3755684-4-i.uvarov@cognitivepilot.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210407111428.3755684-4-i.uvarov@cognitivepilot.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 07 Apr 2021 14:14:26 +0300, Ivan Uvarov wrote:
> Baoding Forlinx Embedded Technology Co., Ltd. is the manufacturer of the
> Allwinner R40/A40i-powered FETA40i-C SoM and the OKA40i-C dev/carrier board
> based on it.
> 
> This patch adds the DT vendor prefix for Forlinx in preparation for a
> further patch, which includes a devicetree for the OKA40i-C board.
> 
> Signed-off-by: Ivan Uvarov <i.uvarov@cognitivepilot.com>
> 
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
