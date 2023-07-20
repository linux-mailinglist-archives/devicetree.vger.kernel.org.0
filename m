Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1829175AB11
	for <lists+devicetree@lfdr.de>; Thu, 20 Jul 2023 11:40:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230459AbjGTJkM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Jul 2023 05:40:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42550 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230503AbjGTJjy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Jul 2023 05:39:54 -0400
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 38F7D26A2
        for <devicetree@vger.kernel.org>; Thu, 20 Jul 2023 02:36:01 -0700 (PDT)
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-521dd3d93bbso311894a12.1
        for <devicetree@vger.kernel.org>; Thu, 20 Jul 2023 02:36:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1689845760; x=1690450560;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MbEixaOkxNJN74ak67fuMAe8qbP5jIXA+BkpUoZ/+vw=;
        b=DyBZCxUTKXm94FjQXQ7w8jrcELARpqFqL+Kg0e7f1vQIwD46ODVgs6YOY8OpfvDtAR
         KTDMJxfZqdo2XWn2fRr44udKWcP9k6VxBv7qTq9MQMSKPNr00WULucw30rJPezx7HU+r
         9oVqxAFlbNjB1i9UED2nkTueAVo5545WyqLFfUK1TvY6e+XOQoWL4hGOsYCirnhmKLxA
         GlvPrr6FtX/2aXYd5+c3sl4mDhH8MBSOnopNn+29pHLiEIPi6z9naAV74MRxqYKTa+WD
         vkGkyObwNkpGgXAnJ/Mmkmw8KxqrfFSmpXy7v6un9wZLIBGgDA/OBufg14vk9r9uEFOc
         l5cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689845760; x=1690450560;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MbEixaOkxNJN74ak67fuMAe8qbP5jIXA+BkpUoZ/+vw=;
        b=iMK6d0y32YbjGWpCGduluMBFrxgMrHOVggvtB6ofU3h/1fVbxHi/lkJz78xxFGcnzq
         8bdGtg6JKkYzLqmwg/j2tBmddTzpR2pSMpmez5Ovz0pgoof66RfA259scGFpgij5tjtL
         maU5jwsQbiWITXKN0ax3lXznLtxTN+kNAljDGj4vQD9jXLgL1lYSgq8ns+A5EhNbjUHO
         1GrTJ1EejM8ePgQL8w4rc/mkwn8PSuZ+j6+cy7GuJBSMJ/5o69QRNZ6U3BpxDWBeRSlv
         BHkIE7aankSWHTOczjL8Cq6GFB3Ghw77IRY+cWc4iCFgO3Ota1h5dgQcT2mDdhNZgzKe
         b/mA==
X-Gm-Message-State: ABy/qLbkX4X5hsDJer/kt7DL+uJcAc2ihqLFhZqQ4UD4aHlDEfnnSKHI
        i8JjfS95nG2lxHumwq3aDZDDtA==
X-Google-Smtp-Source: APBJJlHdcqWTCi4MqbmDQdedPbHXGtLDE+1AHMjwt6QtLxsX6n9wzm9peAh8UPM3H/gm2b/+7s6XsA==
X-Received: by 2002:aa7:d7d1:0:b0:51e:ebd:9f5b with SMTP id e17-20020aa7d7d1000000b0051e0ebd9f5bmr4608092eds.36.1689845759752;
        Thu, 20 Jul 2023 02:35:59 -0700 (PDT)
Received: from [10.1.3.131] (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id w17-20020aa7cb51000000b005217a24addbsm489507edt.20.2023.07.20.02.35.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Jul 2023 02:35:59 -0700 (PDT)
Message-ID: <2e497eb2-f927-90bf-daf4-684d6aa0fbd6@baylibre.com>
Date:   Thu, 20 Jul 2023 11:35:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v3,2/3] drm/mediatek: dp: Add the audio packet flag to
 mtk_dp_data struct
To:     Shuijing Li <shuijing.li@mediatek.com>, chunkuang.hu@kernel.org,
        p.zabel@pengutronix.de, airlied@gmail.com, daniel@ffwll.ch,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, matthias.bgg@gmail.com,
        angelogioacchino.delregno@collabora.com, jitao.shi@mediatek.com
Cc:     dri-devel@lists.freedesktop.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com
References: <20230720082604.18618-1-shuijing.li@mediatek.com>
 <20230720082604.18618-3-shuijing.li@mediatek.com>
Content-Language: en-US
From:   Alexandre Mergnat <amergnat@baylibre.com>
In-Reply-To: <20230720082604.18618-3-shuijing.li@mediatek.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,NICE_REPLY_A,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Reviewed-by: Alexandre Mergnat <amergnat@baylibre.com>

On 20/07/2023 10:26, Shuijing Li wrote:
> The audio packet arrangement function is to only arrange audio.
> packets into the Hblanking area. In order to align with the HW
> default setting of mt8195, this function needs to be turned off.

-- 
Regards,
Alexandre
