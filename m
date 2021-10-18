Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 818454325A2
	for <lists+devicetree@lfdr.de>; Mon, 18 Oct 2021 19:54:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231739AbhJRR4h (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Oct 2021 13:56:37 -0400
Received: from mail-ot1-f54.google.com ([209.85.210.54]:39546 "EHLO
        mail-ot1-f54.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231398AbhJRR4h (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 Oct 2021 13:56:37 -0400
Received: by mail-ot1-f54.google.com with SMTP id e59-20020a9d01c1000000b00552c91a99f7so826776ote.6
        for <devicetree@vger.kernel.org>; Mon, 18 Oct 2021 10:54:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=jKb3CBAeA1seb+unx/+TUGtwwMBXx4JIK7gbIjFPOtw=;
        b=z1fAdj5QGWtJ+swrXET7UkpEQX/ZIj/zH47BQmq1S+EPl8l3vUGnP4512dQQQtpJSc
         uMokpxFcTdTmu/3I14JHYJP+CZE0F/DHcnEpysZL7E3Eaa69NmOA+mwSisZnSbQ1QPFM
         QYf9RTF9Xjed0/eJ3xXFv5PQpdYRG2i8OBBO4/4sDFGAWK031bY8VyPK/VjrGQq6+MVD
         zK8Mf+ACIk46kycBYLqLhRsaLQBeYdW1C99gghac8awlvfodO1JXpZoAy3WHxCugiTHN
         QsbzMwyMfYpOkIR0SVIzvGDnkyD/nRumDGhlh/x90ODqg+lDR8Mn5Mo3o1HR9TW3ZcVa
         rXAQ==
X-Gm-Message-State: AOAM530Qn0gYcbDptuQ6J55HzyFlJgLEOskB76K1eBotye0izBqq+yAI
        QyDP9m1E1kNgF3m/gn8skvcYEEEdJw==
X-Google-Smtp-Source: ABdhPJzjaAbzHrWDppkjBo/28bRg5OcHiXZUrmYxjZ2W7OPdRI0Xcij6rErtl8Vbp8qCWG/S2MKpxA==
X-Received: by 2002:a9d:754a:: with SMTP id b10mr1117941otl.182.1634579665642;
        Mon, 18 Oct 2021 10:54:25 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id a15sm3370912oiw.53.2021.10.18.10.54.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Oct 2021 10:54:24 -0700 (PDT)
Received: (nullmailer pid 2652550 invoked by uid 1000);
        Mon, 18 Oct 2021 17:54:24 -0000
Date:   Mon, 18 Oct 2021 12:54:24 -0500
From:   Rob Herring <robh@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v5 1/2] dt-bindings: display: bridge: lvds-codec:
 Document pixel data sampling edge select
Message-ID: <YW200Baw1kKFxztC@robh.at.kernel.org>
References: <20211017001204.299940-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211017001204.299940-1-marex@denx.de>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 17 Oct 2021 02:12:03 +0200, Marek Vasut wrote:
> The OnSemi FIN3385 Parallel-to-LVDS encoder has a dedicated input line to
> select input pixel data sampling edge. Add DT property "pclk-sample", not
> the same as the one used by display timings but rather the same as used by
> media, to define the pixel data sampling edge.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: devicetree@vger.kernel.org
> To: dri-devel@lists.freedesktop.org
> ---
> V4: New patch split from combined V3
> V5: Rebase on recent linux-next
> ---
>  .../bindings/display/bridge/lvds-codec.yaml    | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
