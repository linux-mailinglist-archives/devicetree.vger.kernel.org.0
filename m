Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8D97E35CF2F
	for <lists+devicetree@lfdr.de>; Mon, 12 Apr 2021 19:04:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243597AbhDLRFH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Apr 2021 13:05:07 -0400
Received: from mail-oi1-f173.google.com ([209.85.167.173]:45707 "EHLO
        mail-oi1-f173.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244630AbhDLREW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Apr 2021 13:04:22 -0400
Received: by mail-oi1-f173.google.com with SMTP id d12so14075744oiw.12
        for <devicetree@vger.kernel.org>; Mon, 12 Apr 2021 10:04:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=silE+U2rbwrMV2Dg824wX0OaC704+eLx3u+qi6zkgR8=;
        b=oyHjsY9uvxvKhOqX1A7YTlv8vMAMailIrrKFqm5/aNPVc637L2SJIy1AB33HmuQgPs
         HGyKTzdj5NlkGlndHtk5BMWlWP/MZDyzwEdPGlFFlt4l0rH19riVJ9e2S8PtEO7J06d+
         Js5pDdEou/Mt8QsQHJsYwd60cKXx2sh6syXACuEa4RjwAV0PgglU1ahLyw+7jLc4Zoe3
         qRs2xtuvgTGdAWl6DUaeH82hWTbYcfr9PJDNqrorV1VdfmcWuRpVwqi4VAzzvrRTBA7Z
         7Pg3wo+UybltmiGXevFl2cIhwsk75rZtFZ0vvFarbXQAUFUdHuInCTcuLRpAtcuDKDAB
         DDMg==
X-Gm-Message-State: AOAM533qU3xDUxijVno4cKGAoN5HqiA9Kes0DNwjdaWtF0Qph5iF+4s0
        IaInwIRanVX0uC9IYQFToY+ChoUrsg==
X-Google-Smtp-Source: ABdhPJzpKYBtei3Nt+uVN0rtI/O5WxDYqrDMLkARmYuswZQPlDHkoc53A8ZazG1QZhdlmct4dWBAjw==
X-Received: by 2002:a05:6808:a91:: with SMTP id q17mr77251oij.147.1618247043297;
        Mon, 12 Apr 2021 10:04:03 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id x3sm2881557otj.8.2021.04.12.10.04.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Apr 2021 10:04:02 -0700 (PDT)
Received: (nullmailer pid 4049816 invoked by uid 1000);
        Mon, 12 Apr 2021 17:04:01 -0000
Date:   Mon, 12 Apr 2021 12:04:01 -0500
From:   Rob Herring <robh@kernel.org>
To:     Lukasz Majewski <lukma@denx.de>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        devicetree@vger.kernel.org,
        Oleksij Rempel <linux@rempel-privat.de>,
        Shawn Guo <shawnguo@kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: arm: fsl: add Liebherr's XEA board
Message-ID: <20210412170401.GA4049781@robh.at.kernel.org>
References: <20210409121706.29961-1-lukma@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210409121706.29961-1-lukma@denx.de>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 09 Apr 2021 14:17:06 +0200, Lukasz Majewski wrote:
> Add Liebherr's XEA imx28 based board.
> 
> Signed-off-by: Lukasz Majewski <lukma@denx.de>
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
