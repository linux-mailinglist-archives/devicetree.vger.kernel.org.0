Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1F6A353AFD0
	for <lists+devicetree@lfdr.de>; Thu,  2 Jun 2022 00:51:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231522AbiFAV3I (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Jun 2022 17:29:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56456 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231494AbiFAV3H (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Jun 2022 17:29:07 -0400
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com [IPv6:2607:f8b0:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5054117D381;
        Wed,  1 Jun 2022 14:29:06 -0700 (PDT)
Received: by mail-pg1-x52a.google.com with SMTP id 7so2221966pga.12;
        Wed, 01 Jun 2022 14:29:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=nAVwQodkjWfLxV3GaHIx/ifN9ZldZyPTtngAs8rNMts=;
        b=jYuTllxZgZe0PsX4trAM0f1L4PyvIgYBZL5Aan6F0a71HAPpjz/MwDZZ82+ZlczdzN
         zNEZpczeYXTtVSFKZHjnkTQ+kHpjfGdSw5Y6TN8Lhfjp/4h7brVxJWC8KOtSnaNQ90sn
         sAtqIKHf7ZmJuvcldRCp1nrz6y6Rr7btUF9uIQ0cwRFXw7QXaAGCiobVsCOYDFimBwp2
         oveC0osN1TVL+fWq8LIoNLayKqowm/L25gFD7sPHtHGiRn4hjJqrktIA0pdJHk2k3r7e
         1TmhXylJwTs1uiXkhCO5oDXn58fkutHdy62J2dYhTkb5N/wvIz+HiODx0EbCrMLW0G+u
         +KSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=nAVwQodkjWfLxV3GaHIx/ifN9ZldZyPTtngAs8rNMts=;
        b=KVvx7qCYZbUtjStUB8fr85PIyElAT/wMr6lmEmRVHZIz0085mCfAx5jv8tDIBPrFye
         WuTvd2SVqnxEn3yMuWE6NX/yrWnuaZsHlEMwvk8NdhL/MwUV9tUcc+8ncxCQx1A6rnJB
         aNfBjsGbV3h5evXfRyfInsjUAzXYfsx7qowzRCwRpht+fFOrMhyXuYphgGcQB/OBNEZW
         VzcxK9Yv3uwE2tYgmU/722G4DqriHaedbETNEVc13OzEJa0T3/f4HJZMelINSEkSgnyQ
         BiOPxeE5u0Ye2RcbBvMAehF/Jt5F2eqCM7F2nqOiqV+pcUx9jk8pOOlZLkZ9gBJLEpuS
         Hrvg==
X-Gm-Message-State: AOAM532xCvH6yz0KVcI4dIKdtjuaNiWHL4RieOKrcbN4n/qe+6dJZPhA
        PRAKx02xiymDOdKZCPfjjis=
X-Google-Smtp-Source: ABdhPJx7ZrwpWDs/5kq8F63b1+81kR7xZ4sxRrn80wffc7f55ZDfrB+v5KBze2fxFoTwLxGkok60aw==
X-Received: by 2002:a05:6a00:996:b0:50b:76b8:3bb1 with SMTP id u22-20020a056a00099600b0050b76b83bb1mr1586359pfg.9.1654118945688;
        Wed, 01 Jun 2022 14:29:05 -0700 (PDT)
Received: from google.com ([2620:15c:202:201:7a22:99c9:242d:6235])
        by smtp.gmail.com with ESMTPSA id d9-20020a170902e14900b00163f183ab76sm1948452pla.152.2022.06.01.14.29.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Jun 2022 14:29:04 -0700 (PDT)
Date:   Wed, 1 Jun 2022 14:29:02 -0700
From:   Dmitry Torokhov <dmitry.torokhov@gmail.com>
To:     Rob Herring <robh@kernel.org>
Cc:     devicetree@vger.kernel.org, devicetree-spec@vger.kernel.org,
        Wolfram Sang <wsa+renesas@sang-engineering.com>,
        Eugen Hristev <eugen.hristev@microchip.com>,
        Codrin Ciubotariu <codrin.ciubotariu@microchip.com>,
        Jon Hunter <jonathanh@nvidia.com>,
        Alain Volmat <alain.volmat@foss.st.com>,
        Matt Johnston <matt@codeconstruct.com.au>
Subject: Re: [dtschema PATCH] schemas: i2c: Add missing properties and
 descriptions
Message-ID: <YpfaHrIozOQzv65O@google.com>
References: <20220427175956.362987-1-robh@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220427175956.362987-1-robh@kernel.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Apr 27, 2022 at 12:59:56PM -0500, Rob Herring wrote:
> Add remaining properties and descriptions from i2c.txt binding in Linux
> kernel tree. The Cc list are the authors of i2c.txt.
> 
> Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>
> Cc: Eugen Hristev <eugen.hristev@microchip.com>
> Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>
> Cc: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
> Cc: Jon Hunter <jonathanh@nvidia.com>
> Cc: Alain Volmat <alain.volmat@foss.st.com>
> Cc: Matt Johnston <matt@codeconstruct.com.au>
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
> Cc list, 
> 
> I need your or your company's permission to relicense i2c.txt contents 
> (used in 'description') to BSD-2-Clause. Please ack and provide a 
> copyright if desired.

Acked-by: Dmitry Torokhov <dmitry.torokhov@gmail.com>

Thanks.

-- 
Dmitry
