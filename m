Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 736CC4FB23E
	for <lists+devicetree@lfdr.de>; Mon, 11 Apr 2022 05:20:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243447AbiDKDWU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 10 Apr 2022 23:22:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45286 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231394AbiDKDWS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 10 Apr 2022 23:22:18 -0400
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com [IPv6:2607:f8b0:4864:20::1032])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A44EE193DC
        for <devicetree@vger.kernel.org>; Sun, 10 Apr 2022 20:20:05 -0700 (PDT)
Received: by mail-pj1-x1032.google.com with SMTP id mm4-20020a17090b358400b001cb93d8b137so1706812pjb.2
        for <devicetree@vger.kernel.org>; Sun, 10 Apr 2022 20:20:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=tN1G+q/wcvFzwJbeesZQdsHKA960AujjCf5R4X8WE20=;
        b=FuNylqhPzlplRX6n8tyaYgiS6zwGA+pVNFd5RqqHl8IHExlSLjIIzrmlUNoVXPU1tr
         6yMMuesDtEAnrqFcrv4cTlHq1fT8qRK43q4FwsyyQ89bCO9Qf9ObcN2NXIXR3sDbLpkk
         2YI1/V00NKbJk20tqlhEUZ0q+t2JpUN5VD7F4ZcU84oBrbZVUjgevZBP1pSWRlYQnhZ9
         2gQu5aD+sio9Ft2pIWnoAlrqDIJG3ZZmU6D/lUxAlzZyI2CRtr+OZqWuPIVsY6gKEor7
         iGDMzheZBrk5OJHAcSCS1uv3b1G6yFheCFubaHnoewrjG37KEfXFuMWdge6olkUY3qjh
         S7QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=tN1G+q/wcvFzwJbeesZQdsHKA960AujjCf5R4X8WE20=;
        b=KpZSWXhh8cjK/x9s6nOVt2X96PssfwvsdIVb0CyRyAWEPlt6hlQyb73MoIDZPbuk9j
         xU47uD8dsf+5TkXJy+pC/DkJGqobcjQUKUEHS8ZsMAT+OqmWK9ET+anXaHT/UX+Fe9lb
         raPydM9H93VZpV84ly+adGh/g46qXh0RC8Ik99iLorTttuMwLZ7JbtGee95ZJg0rY11k
         c7+/vFFv7BZBEbsaJmu32szQkGw4nMP8pkJbWE+hQYpADVFTJeI1I1l2p7aim7Tl0UsC
         l/QRies1lK3ii28+OVPAoLAcGmmOA9s0CVjpZK3txCj6IkZios3gFWsbcgpwJTMMBnRp
         4cOg==
X-Gm-Message-State: AOAM532INXwAxOyxJJ4k3qeGeSrhiNNrLsA6xA+ak49K6LQEIoL7SVqr
        y5hCqvlWZT5gD8z73/be6F4GtQ==
X-Google-Smtp-Source: ABdhPJyTNnBj8qT3V4RFBsglvnr2r+FAikoXvU7cRGxlyV+whWVQJZsQPJige4Ynozo5I3N8OxMYIg==
X-Received: by 2002:a17:90a:558a:b0:1c6:fad4:2930 with SMTP id c10-20020a17090a558a00b001c6fad42930mr34664972pji.159.1649647205159;
        Sun, 10 Apr 2022 20:20:05 -0700 (PDT)
Received: from localhost ([223.184.83.228])
        by smtp.gmail.com with ESMTPSA id ob8-20020a17090b390800b001c6a1e5595asm19542986pjb.21.2022.04.10.20.20.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Apr 2022 20:20:04 -0700 (PDT)
Date:   Mon, 11 Apr 2022 08:50:03 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     Rex-BC Chen <rex-bc.chen@mediatek.com>, rafael@kernel.org,
        robh+dt@kernel.org, krzk+dt@kernel.org, matthias.bgg@gmail.com,
        jia-wei.chang@mediatek.com, roger.lu@mediatek.com,
        hsinyi@google.com, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com
Subject: Re: [PATCH V2 03/15] cpufreq: mediatek: Cleanup variables and error
 handling in mtk_cpu_dvfs_info_init()
Message-ID: <20220411032003.bn6ahm2phf4lpuwd@vireshk-i7>
References: <20220408045908.21671-1-rex-bc.chen@mediatek.com>
 <20220408045908.21671-4-rex-bc.chen@mediatek.com>
 <68de368b-d39a-4e55-9ae9-67d6f0ac7705@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <68de368b-d39a-4e55-9ae9-67d6f0ac7705@collabora.com>
User-Agent: NeoMutt/20180716-391-311a52
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08-04-22, 15:36, AngeloGioacchino Del Regno wrote:
> Il 08/04/22 06:58, Rex-BC Chen ha scritto:
> > From: Jia-Wei Chang <jia-wei.chang@mediatek.com>
> > 
> > - Remove several unnecessary varaibles in mtk_cpu_dvfs_info_init().
> > - Unify error message format and use dev_err_probe() if possible.
> > 
> > Signed-off-by: Jia-Wei Chang <jia-wei.chang@mediatek.com>
> > Signed-off-by: Rex-BC Chen <rex-bc.chen@mediatek.com>
> 
> Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

Applied. Thanks.

-- 
viresh
