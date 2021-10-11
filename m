Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 78BA34299F6
	for <lists+devicetree@lfdr.de>; Tue, 12 Oct 2021 01:44:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232234AbhJKXqz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Oct 2021 19:46:55 -0400
Received: from mail-ot1-f47.google.com ([209.85.210.47]:38458 "EHLO
        mail-ot1-f47.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229576AbhJKXqz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Oct 2021 19:46:55 -0400
Received: by mail-ot1-f47.google.com with SMTP id w10-20020a056830280a00b0054e4e6c85a6so14660090otu.5
        for <devicetree@vger.kernel.org>; Mon, 11 Oct 2021 16:44:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=dq9+YkMx0GHCeJWvTqnKsmwOPTk7sjGTA6ATq7IokFA=;
        b=5Fr28HX0SSe9cSF7nP+ftojxz3AehidfKenblUexGgW9dHwclTWhHiU600KqizD733
         HzoDlDU1/kCTYuo/oW1zQpRXKedDfoa1t93IxMuuSloSzsmTHxCNbRic/p4qbhXv3MEB
         JO4lf74sdfQy30bNEzofNj0Ym7prqrkcH9TZe0cqYT1jhW5KZuXHAmJFORiKNrEHQgqV
         /EpZRkZ1Jqoh4s5XHtAULqs5pM18bESPVsuFXLmUPpW/yscx/LFeiJOg8EApQ90yijR2
         uID5o+m5KswfRMoMQn62uOq6kJV4VHKJ3NxdQvZOAv59pY/W4GsuKnYS9mflfS8H64Aa
         qKTQ==
X-Gm-Message-State: AOAM530o4XoSwyovh3G/Gnk1vl2sm7CAV4pYO1jhjS6jqTgQjQ86I+UK
        6A5E3hkLNIDGE8Ync2IwlA==
X-Google-Smtp-Source: ABdhPJwdGAZLwdNaLgCvThYshN0fgEkSQ3hr7M+UCK9PDK4rr/2YteoPrw9SV/cr4euuY0pIsDg4ZQ==
X-Received: by 2002:a9d:7114:: with SMTP id n20mr14449501otj.25.1633995894622;
        Mon, 11 Oct 2021 16:44:54 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id r4sm2060017oti.27.2021.10.11.16.44.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Oct 2021 16:44:53 -0700 (PDT)
Received: (nullmailer pid 1392392 invoked by uid 1000);
        Mon, 11 Oct 2021 23:44:53 -0000
Date:   Mon, 11 Oct 2021 18:44:53 -0500
From:   Rob Herring <robh@kernel.org>
To:     Markus Schneider-Pargmann <msp@baylibre.com>
Cc:     Vinod Koul <vkoul@kernel.org>, devicetree@vger.kernel.org,
        linux-phy@lists.infradead.org,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        Philipp Zabel <p.zabel@pengutronix.de>,
        dri-devel@lists.freedesktop.org, Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v4 1/7] dt-bindings: mediatek,dpintf: Add DP_INTF binding
Message-ID: <YWTMdewWCNCZy+UE@robh.at.kernel.org>
References: <20211011094624.3416029-1-msp@baylibre.com>
 <20211011094624.3416029-2-msp@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211011094624.3416029-2-msp@baylibre.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 11 Oct 2021 11:46:18 +0200, Markus Schneider-Pargmann wrote:
> DP_INTF is a similar functional block to mediatek,dpi but is different
> in that it serves the DisplayPort controller on mediatek SoCs and uses
> different clocks. Therefore this patch creates a new binding file for
> this functional block.
> 
> Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
> ---
> 
> Notes:
>     Changes v3 -> v4:
>     - Fixed clock names in the example as the clock patch series is merged into
>       next now
>     - Add missing ports decleration to the example
> 
>     Changes v1 -> v2:
>     - Move the devicetree binding from mediatek,dpi into its own binding file.
> 
>  .../display/mediatek/mediatek,dpintf.yaml     | 86 +++++++++++++++++++
>  1 file changed, 86 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,dpintf.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
