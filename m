Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 51E82503169
	for <lists+devicetree@lfdr.de>; Sat, 16 Apr 2022 01:10:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1352201AbiDOVNL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Apr 2022 17:13:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48394 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1353299AbiDOVNE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Apr 2022 17:13:04 -0400
Received: from mail-pg1-x52f.google.com (mail-pg1-x52f.google.com [IPv6:2607:f8b0:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0EF825EDCA
        for <devicetree@vger.kernel.org>; Fri, 15 Apr 2022 14:10:27 -0700 (PDT)
Received: by mail-pg1-x52f.google.com with SMTP id bg9so8556424pgb.9
        for <devicetree@vger.kernel.org>; Fri, 15 Apr 2022 14:10:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=A2AI4pplq8y+1V8AY4LoXu1zsRUo+0KPIG/r7h38Ai8=;
        b=d6Lcp1mmb5lvSHabXdMUO6rgO/E+hm6yhgZvoJHHJIeHRkbBWh3B5xvc4E6cjHoHyl
         Xh7/6eSJP9teC05Ct8XOAMu5ZRAUj4zf24sa8KJ5runxH3awMzhVvMeVKC3qogi6tg2Q
         Cl5hKQlt4CwXvDHkxaP11XFuVemS0ftRvUX78=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=A2AI4pplq8y+1V8AY4LoXu1zsRUo+0KPIG/r7h38Ai8=;
        b=jWmc4jJjNdigIoRm5fRIkncNcUhud59TS2phAABae5JNqVMuHbWhf1B92E62pJUy6Z
         I/Ho+HHCHhdK7h0tSc1NaQ6Zp3Y+It4hMqxaxclDnFk9d9ZKMp9nCchA9M+9PdyjaXy7
         ck2WdcLoSPU7cyyIn+KEWenBfFexm/tmRInhFtHY/+sOR8RbhiJXlqhOmZn/sZUIR88x
         0ZCkVnPENUjWtQggMbumeiKGN6UKuRRhw47yKxLoUaAs5TAua3wSrebloz+zJEgZnxNv
         bMD28V7A1HIQ3ip6lQ26wNofL5OQRjO5br2pAbNxQIyYg46Z1I/A9lrmlzhNlap6Y7jU
         pUPA==
X-Gm-Message-State: AOAM532lExxWz+2RKeMhPEk1x7fJ4/Zrq1cz1IAy3PtBRiYZYEj+S44M
        xnVFwDSRyM0rsJNIHWHXsK2vog==
X-Google-Smtp-Source: ABdhPJxYscLYKrQD1yLUGKWWVL2nrGynAlczX+I4wLahU1toXz5oJh3uy7J0GhdDCpqbcPSKF+N/1w==
X-Received: by 2002:a63:dc44:0:b0:381:5720:88a5 with SMTP id f4-20020a63dc44000000b00381572088a5mr665257pgj.219.1650057026602;
        Fri, 15 Apr 2022 14:10:26 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:b27a:b3e7:2e3e:e4be])
        by smtp.gmail.com with UTF8SMTPSA id x6-20020a17090a294600b001cba3274bd0sm9350819pjf.28.2022.04.15.14.10.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Apr 2022 14:10:26 -0700 (PDT)
Date:   Fri, 15 Apr 2022 14:10:23 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>
Cc:     agross@kernel.org, bjorn.andersson@linaro.org, lgirdwood@gmail.com,
        broonie@kernel.org, robh+dt@kernel.org, quic_plai@quicinc.com,
        bgoswami@codeaurora.org, perex@perex.cz, tiwai@suse.com,
        srinivas.kandagatla@linaro.org, rohitkr@codeaurora.org,
        linux-arm-msm@vger.kernel.org, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        swboyd@chromium.org, judyhsiao@chromium.org,
        Linus Walleij <linus.walleij@linaro.org>,
        linux-gpio@vger.kernel.org,
        Venkata Prasad Potturu <quic_potturu@quicinc.com>
Subject: Re: [PATCH v12 4/7] pinctrl: qcom: Update lpi pin group custiom
 functions with framework generic functions
Message-ID: <YlnfPzGQDVlUnRqX@google.com>
References: <1647447426-23425-1-git-send-email-quic_srivasam@quicinc.com>
 <1647447426-23425-5-git-send-email-quic_srivasam@quicinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <1647447426-23425-5-git-send-email-quic_srivasam@quicinc.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Mar 16, 2022 at 09:47:03PM +0530, Srinivasa Rao Mandadapu wrote:
> Update custom pin group structure members with framework generic
> group_desc structure and replace the driver's custom pinctrl_ops
> with framework provided generic pin control group functions to avoid
> redundant code written in lpass lpi driver.
> 
> Signed-off-by: Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>
> Co-developed-by: Venkata Prasad Potturu <quic_potturu@quicinc.com>
> Signed-off-by: Venkata Prasad Potturu <quic_potturu@quicinc.com>

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
