Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EAEDC79E65D
	for <lists+devicetree@lfdr.de>; Wed, 13 Sep 2023 13:16:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240084AbjIMLQD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Sep 2023 07:16:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41196 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240016AbjIMLPu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Sep 2023 07:15:50 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D080E1BF2
        for <devicetree@vger.kernel.org>; Wed, 13 Sep 2023 04:14:43 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-31c5c06e8bbso6763421f8f.1
        for <devicetree@vger.kernel.org>; Wed, 13 Sep 2023 04:14:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694603682; x=1695208482; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Sz/2Xhp1w0ethYXV/2klfVqKt4JNZvE9WLZJG9+QLJc=;
        b=P+0XnA/g98Z3gYNQKiqVC0TlvSorTFuTzV7Yqdl6Jmzlzuw3AYl45nLI9Prw2Bsdnd
         PdFeeL1Pl+hNhRGpTf2pE+ctLyXWBKGnWrAPnVP3Curxt/N+F7Wdf/qenoyGHevsqa+k
         b+ch+Z2ZGEz2EcdCM1MRopTS5wFcYZQ9udcUDy8IZRTKCWevWaowH2z7twQ49nFdv149
         mcNeVaJ+qPbwZ2IAi8i7Twi418yHqh5PO6Y301SCBqb7Q5x+5mBLrPGW8ajw8EYr7rWj
         yqFqNFlAUQ09IwIbm2aWNDx4TGGTiCnrtzmI8YE9hSVakMobN3u2g4wuqZIuRWZ4Axnb
         pB1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694603682; x=1695208482;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Sz/2Xhp1w0ethYXV/2klfVqKt4JNZvE9WLZJG9+QLJc=;
        b=Viht9i0X3CYke5EF42k0iILmMhNsqcc2WAazFvXP9bIjEgF7c9bRh18rawME5mdiWK
         pZFv3sl9WnJgk2OX5MITCir2tn9TEamCLoT6OR3dSWcqHd3EwIhp4Cvh537eSLdg4SsH
         l0MrLDtPOnOpXX1CQh/EIuLlWL/MR0gwKPSqJ0popYInUZ7/Fhu4hFXdB6FDK4tat/gO
         0X0beT12neIhon0zm6fQxMMHvnH+nqMPt0f9boaTKkD70vWi7eLNyOd14rDfXQEtGaRD
         LT3/GBVNlEBnjSw0sgSlelnBJKnaAYBfF8lgCDrL9Y7gBkAaCJcTjSFGqZaluKHzJ6Zi
         0bMA==
X-Gm-Message-State: AOJu0Yxj7csCO7s7U9kUTEigDhNvYYxX3TWCFfn6T77L2amwDp5Bp/ZY
        e9paSBqYHN/5LiYjYybYOHS4xQ==
X-Google-Smtp-Source: AGHT+IFKzaCiQkryqApXLRa+CYcF3hfZn25Ngb2HWUfxb6L7XhhpPpyalv8q/7qHay4WnBD23TidEQ==
X-Received: by 2002:a5d:6650:0:b0:315:a1bb:4d7b with SMTP id f16-20020a5d6650000000b00315a1bb4d7bmr1947207wrw.35.1694603682309;
        Wed, 13 Sep 2023 04:14:42 -0700 (PDT)
Received: from localhost ([102.36.222.112])
        by smtp.gmail.com with ESMTPSA id h17-20020a056000001100b003197c2316ecsm15115280wrx.112.2023.09.13.04.14.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Sep 2023 04:14:42 -0700 (PDT)
Date:   Wed, 13 Sep 2023 14:14:39 +0300
From:   Dan Carpenter <dan.carpenter@linaro.org>
To:     Johannes Zink <j.zink@pengutronix.de>
Cc:     David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Thierry Reding <thierry.reding@gmail.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        kernel test robot <lkp@intel.com>,
        Dan Carpenter <error27@gmail.com>,
        patchwork-jzi@pengutronix.de, kernel@pengutronix.de,
        Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 3/3] drm/panel-simple: allow LVDS format override
Message-ID: <e6a2df72-46cb-4f22-b983-ac5ad2995da8@kadam.mountain>
References: <20230523-simplepanel_support_nondefault_datamapping-v4-0-e6e7011f34b5@pengutronix.de>
 <20230523-simplepanel_support_nondefault_datamapping-v4-3-e6e7011f34b5@pengutronix.de>
 <96898dbb-3fdf-7a74-ae80-f18ae2244f50@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <96898dbb-3fdf-7a74-ae80-f18ae2244f50@pengutronix.de>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Aug 18, 2023 at 09:04:34AM +0200, Johannes Zink wrote:
> Hi Dan,
> 
> do you have any input on this for me?
> 

Sorry, I was out of office and the truth is that I'm never going to
catch up on all the email I missed.  :/

Looks okay to me.  I can't remember what I said about this code in v3
but it looks good now.  I'm not a DRM dev so I'm not sure my review
counts for much.  You should always just assume that if I'm quiet
then I'm happy.  :)

regards,
dan carpenter

