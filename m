Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 723EF50D8AB
	for <lists+devicetree@lfdr.de>; Mon, 25 Apr 2022 07:11:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241071AbiDYFOh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Apr 2022 01:14:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41622 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241171AbiDYFOc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Apr 2022 01:14:32 -0400
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com [IPv6:2607:f8b0:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3C295112
        for <devicetree@vger.kernel.org>; Sun, 24 Apr 2022 22:11:28 -0700 (PDT)
Received: by mail-pl1-x636.google.com with SMTP id b12so9677563plg.4
        for <devicetree@vger.kernel.org>; Sun, 24 Apr 2022 22:11:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=ZvxV9ZnERABhl2EIWB3iaKqhZLjFPNeceIsyVrSRWvs=;
        b=MOb+NOSkcuxT3iC2OB4nNFe+rcsvXi1TPBgskPY2Z1FrXEtiVy0Ae9bKmiSUyhlwFZ
         MKnxDTN8lUxZ0Xnn7sl6JIfqOunMo/O2GdxNQn/yEHo8LJ9w2ViWjmBYj1lUkAbPoWj3
         msXeQ6FbQQu/UCEM5kNMLKIjlvMFAY4dJxzA5fRdTJPo6KJlxN744Uted6jPb9BON+19
         JDw5C4GZrMpSYIOxY1D/yKT/4IL4o3YC/jSc6lgC6TS/IImuYnrXT94nFVunT8RBCM9Q
         tumG4gZfNJSAYacyc6P1SwAlsQZob2Zvop5Z64UFacg+iYaghM/f2HeyDLK4amlAIUUi
         kJ9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=ZvxV9ZnERABhl2EIWB3iaKqhZLjFPNeceIsyVrSRWvs=;
        b=5Co7plL7NmNhWKENkjS1DwTKXtuIZBD2CjAaE7BvsDlzvDmti/1Kjs2VMxxIXzDHci
         vKC68voh5pFQmvRNlUGbU33kU97L3xcRd0OvQ9TWeyKd/xghv7q/Zzh4ooQK7KtUqb3f
         0gf5WDCMQEBlkFA9GfXqRshuWFPsdlBRHsF3e585pueZaDj2/D0vrmKJSdOq8norBtc9
         jZJHklzrgA6BRwuDzjwL9a8oRNCc3sNV1osnKIzdFeFjfSgXc+ERBqjeRUG1luvamUwD
         o5zuiuYvoPM0yV04R+hXdYwLzaZryYTtVLxnv3Y7O9uelExvdiCrJokNXIN77L/B0qnj
         Wp8Q==
X-Gm-Message-State: AOAM533oSiqj05FnTesuxM/9BEMEehojgSayRLGpMPjWk7BdHPc3nayv
        uftoojnMg5XzKrpFO72xAHIBWA==
X-Google-Smtp-Source: ABdhPJyMuAnIZMhsEBRUbqrq8jrM/dXAU1QVX+cJ7FJJI9aelTLzI6ZCuHEkflMcb/yh3jFoW48t3g==
X-Received: by 2002:a17:90a:4a8a:b0:1d5:a3df:ab5 with SMTP id f10-20020a17090a4a8a00b001d5a3df0ab5mr23699773pjh.64.1650863487809;
        Sun, 24 Apr 2022 22:11:27 -0700 (PDT)
Received: from localhost ([122.171.250.232])
        by smtp.gmail.com with ESMTPSA id n64-20020a622743000000b0050acf41bde9sm9778362pfn.117.2022.04.24.22.11.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Apr 2022 22:11:27 -0700 (PDT)
Date:   Mon, 25 Apr 2022 10:41:25 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Rex-BC Chen <rex-bc.chen@mediatek.com>
Cc:     rafael@kernel.org, robh+dt@kernel.org, krzk+dt@kernel.org,
        matthias.bgg@gmail.com, jia-wei.chang@mediatek.com,
        roger.lu@mediatek.com, hsinyi@google.com, khilman@baylibre.com,
        angelogioacchino.delregno@collabora.com, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com
Subject: Re: [PATCH V4 03/14] cpufreq: mediatek: Replace old_* with pre_*
Message-ID: <20220425051125.r6k55uqnkgnpm2sm@vireshk-i7>
References: <20220422075239.16437-1-rex-bc.chen@mediatek.com>
 <20220422075239.16437-4-rex-bc.chen@mediatek.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220422075239.16437-4-rex-bc.chen@mediatek.com>
User-Agent: NeoMutt/20180716-391-311a52
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22-04-22, 15:52, Rex-BC Chen wrote:
> To make driver more readable, replace old_* with pre_*.
> 
> Signed-off-by: Rex-BC Chen <rex-bc.chen@mediatek.com>
> Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> ---
>  drivers/cpufreq/mediatek-cpufreq.c | 84 +++++++++++++++---------------
>  1 file changed, 42 insertions(+), 42 deletions(-)

Applied. Thanks.

-- 
viresh
