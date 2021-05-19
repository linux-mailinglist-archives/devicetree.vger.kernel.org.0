Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0C6F5389758
	for <lists+devicetree@lfdr.de>; Wed, 19 May 2021 22:03:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232486AbhESUEp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 May 2021 16:04:45 -0400
Received: from mail-oi1-f180.google.com ([209.85.167.180]:36676 "EHLO
        mail-oi1-f180.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232411AbhESUEn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 May 2021 16:04:43 -0400
Received: by mail-oi1-f180.google.com with SMTP id f184so14256974oig.3
        for <devicetree@vger.kernel.org>; Wed, 19 May 2021 13:03:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=gV7KaQ2RRDP+Kg+gfuY1yML9grJpthCGS6mDZn+/Isg=;
        b=s3fqW924Zf7aXUDQ7JVAsybW8Qcc8Bq50lw8aE6SfckhVKiti4IaOUZdsI3oUMuONg
         1U1S8dBnOzKNWomhjFwhjrJVGY615NK1f93GLkOz7Uwwz4SoR/MyI98YO/ShCMZM9ctW
         VmLZzwqKqyJ9gr37vSAMAwSmzvE9TYEbkXrm+3lwt+TCNeajU+sFxKg6QC2ZdAHale2S
         ypg97musTpX3Hkle5bvleemHVVZyxpna0ogUFb2Qw19z0FFXF5bW43wKy9+KIiZ4rTMB
         Eju92Qi3ylCvggGU48E6a7a2BVAuI0br0yhzgGDCuTBOaT9v4yU2O9IyA4FhuHFf+gro
         xPxw==
X-Gm-Message-State: AOAM533EXjXjL/fLrxYdIufsQnogBq/pcqdyPR6fZGaxlm5K6DlIVsFN
        haetDVZOaWY2CUAOaWf7XQ==
X-Google-Smtp-Source: ABdhPJxTNYORD0T11tY39XgYAoKFzANs7V0Asx86T2BxvaiEU8opJ6t9m8UCghu1h4S9pPHRfXmjBw==
X-Received: by 2002:a05:6808:206:: with SMTP id l6mr786177oie.5.1621454602757;
        Wed, 19 May 2021 13:03:22 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id f21sm75810oou.24.2021.05.19.13.03.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 May 2021 13:03:22 -0700 (PDT)
Received: (nullmailer pid 3554837 invoked by uid 1000);
        Wed, 19 May 2021 20:03:21 -0000
Date:   Wed, 19 May 2021 15:03:21 -0500
From:   Rob Herring <robh@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     devicetree@vger.kernel.org, Sam Ravnborg <sam@ravnborg.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Rob Herring <robh+dt@kernel.org>, ch@denx.de,
        dri-devel@lists.freedesktop.org
Subject: Re: [PATCH V2] dt-bindings: display: Fix spacing in lvds.yaml
Message-ID: <20210519200321.GA3554734@robh.at.kernel.org>
References: <20210517224336.409301-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210517224336.409301-1-marex@denx.de>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 18 May 2021 00:43:36 +0200, Marek Vasut wrote:
> Add missing spaces to make the diagrams readable, no functional change.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: devicetree@vger.kernel.org
> To: dri-devel@lists.freedesktop.org
> ---
> V2: Replace all the other tabs too
> ---
>  .../bindings/display/panel/lvds.yaml          | 46 +++++++++----------
>  1 file changed, 23 insertions(+), 23 deletions(-)
> 

Applied, thanks!
