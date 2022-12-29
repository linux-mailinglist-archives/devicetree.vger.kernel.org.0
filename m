Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4812C659204
	for <lists+devicetree@lfdr.de>; Thu, 29 Dec 2022 22:11:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229650AbiL2VLD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Dec 2022 16:11:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37656 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229537AbiL2VLB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Dec 2022 16:11:01 -0500
Received: from mail-oi1-x234.google.com (mail-oi1-x234.google.com [IPv6:2607:f8b0:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C959C11A18
        for <devicetree@vger.kernel.org>; Thu, 29 Dec 2022 13:11:00 -0800 (PST)
Received: by mail-oi1-x234.google.com with SMTP id i127so18078785oif.8
        for <devicetree@vger.kernel.org>; Thu, 29 Dec 2022 13:11:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ytpOR5QKWww4Z2Cv85ErUsWgiGHeMk8+Lk2wYOFtAtw=;
        b=xbFD/xyyvlgiwXtsMAxGjOb+jsXVwyc4HW4hneMivB6velLE6QyBbjxoUe8EUeuLlJ
         86104vtAl7L3T3sWLVR2Ak49fVJd/web83caPH64VqDtv90t9YEhfVMx//GTpSFNNqVF
         fLmtNqSSxqKdr06gi2BFgfHePwCu9VtkHnsJ1eOKIF7jfv1o6vXmislXFnuKy42DTxqu
         g2TyFNqdzuDvE1NlTLXrEjxO0BGZJ5Llk8jHSTMP54OcQeX9pImEc4R7cymQMtOqDTi/
         eKq9Yawt+2eU4AoXTezethraApb1YAYj6Pw4PPkeHCJBn41e8kLdgFwvyd9pcU+pWQBp
         Ag5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ytpOR5QKWww4Z2Cv85ErUsWgiGHeMk8+Lk2wYOFtAtw=;
        b=2X4RbH8jxZkE8Y9O/4keFrUfFInjPPmwtxk8OGJynTsLWdN5MoQ+SsCcE4RI67zK7T
         OPmk314YX3JhDVKRWq4JWd8f+qYFonrmwRlacolvmhDEYyHTkwj6WLR4u1mSXg97UnFu
         1WU8SU0nJegOvLJ/L4drpgV0lCLvqstH0mUj4zHuK3oBj4QUL79EUiCL6Q7ctQX9o0nt
         3MwCfc84o47TNbHjbBk98d323UwsDfTDYpZz6Fmu6/smTN5O/q18/8/BnCmq2wnSliKG
         BJHApalATNajmbIpvAq9/34/d3iHbiCp5UOl1XFLtFCzMO/zz3/XHG5W3tj8hnsC3nlz
         oPWQ==
X-Gm-Message-State: AFqh2kqxhVlMeZOTSNsfpYYi4gG/Wk5cw9yNlrSMsTQ8wkzdsLTQ3hUi
        GDxH9XM1XIEH6sxYj9saf4IJeAvogeYVghsA0JD+MQ==
X-Google-Smtp-Source: AMrXdXvmYVRVuctXWIBSVhNIR2w3Wbao95qnogH453MhyUTn81jk1LWCyFZbpRJUL5cnYYT094MnX3RBubSmKHxwWQM=
X-Received: by 2002:aca:3dd7:0:b0:35b:8358:aed4 with SMTP id
 k206-20020aca3dd7000000b0035b8358aed4mr1552718oia.291.1672348260189; Thu, 29
 Dec 2022 13:11:00 -0800 (PST)
MIME-Version: 1.0
References: <20221215185211.1560736-1-macroalpha82@gmail.com> <20221215185211.1560736-2-macroalpha82@gmail.com>
In-Reply-To: <20221215185211.1560736-2-macroalpha82@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 29 Dec 2022 22:12:54 +0100
Message-ID: <CACRpkdYR1VOwHjUo-NKZgTuMnx5GUUtUjKYbAg0sZXy0064LNg@mail.gmail.com>
Subject: Re: [PATCH V6 1/4] drm: of: Add drm_of_get_dsi_bus helper function
To:     Chris Morgan <macroalpha82@gmail.com>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        maccraft123mc@gmail.com, tzimmermann@suse.de, mripard@kernel.org,
        maarten.lankhorst@linux.intel.com, heiko@sntech.de,
        linux-rockchip@lists.infradead.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        daniel@ffwll.ch, airlied@gmail.com, sam@ravnborg.org,
        thierry.reding@gmail.com, Chris Morgan <macromorgan@hotmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Dec 15, 2022 at 7:52 PM Chris Morgan <macroalpha82@gmail.com> wrote:

> From: Chris Morgan <macromorgan@hotmail.com>
>
> Add helper function to find DSI host for devices where DSI panel is not
> a minor of a DSI bus (such as the Samsung AMS495QA01 panel or the
> official Raspberry Pi touchscreen display).
>
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

The kernel test robot is complaining because the stub isn't compiling,
because of a copy-paste error (superfluous semicolon).

If you fix this up and resend I think we are ready with the patches!

Yours,
Linus Walleij
