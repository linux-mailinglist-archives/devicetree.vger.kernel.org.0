Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5CD7C5E82E2
	for <lists+devicetree@lfdr.de>; Fri, 23 Sep 2022 22:04:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231218AbiIWUDn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Sep 2022 16:03:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55028 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232641AbiIWUDl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Sep 2022 16:03:41 -0400
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 75973121E48
        for <devicetree@vger.kernel.org>; Fri, 23 Sep 2022 13:03:40 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id sd10so2911506ejc.2
        for <devicetree@vger.kernel.org>; Fri, 23 Sep 2022 13:03:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=QMROfvwPaQqqwGBxEwGan/jO/nMMkjUtia8DhAnWKNY=;
        b=C8KMtT7teJco1xJOXhJGd4+IdEHjTvW90OBnWsyCdahJQVKnVt1Za1E8XxlPzWkdz4
         0Ku7TrQdCY3z8n7hRCmX98D5jLxxm6qAXGFqCCXwMg+pUpVbs+bkHpr6982D2vZ6tLuD
         BHMfzA98bLHPgQtyKF5WBsQCQHtN3/L2PkZxc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=QMROfvwPaQqqwGBxEwGan/jO/nMMkjUtia8DhAnWKNY=;
        b=B7FnqmHMDB4ijUU476BgZeuRdl5uaYi9PyhsOmwN4i5o8asJThuMo8ly9Vn0XqJOjC
         TQQjEVU8gvecJjzK4pNm4OG22BllcBQbbulU6R9+St2onaRjfbTyePw5blKGm6eJlKTr
         d6EVgpwY2GdIpT92zlPIsxKv6bdQJ0HwtEAk2HDt6TmCDooe6ggWodrm30H5nBqjD+4a
         AihJtNcbzDbUkn27u60gc3X2TMu4M1zRIOQM3vV0dsMRRc/l9vjDGBGvIAhqvFJ0n1HR
         V4iHu1B6cR0myHR0p4ei9fszAgsE/fLEXY47ZJHeeHB31DDjhFzqoRhR0gkZPTuOrtlm
         68lw==
X-Gm-Message-State: ACrzQf0b5r66L5Txg+qbTRMQwPXEZPXWuExGpxT98qEz6dQFG3N7/eRY
        GxMed8tqEWp93D4vBqZjOmZv2ldhNkgzlvlI
X-Google-Smtp-Source: AMsMyM705nX/87Ued45E2xrMzuH4qO35WdPLRoi5ZlP+3idiHKJu5zi+FBLhsyHU/fKcbR3+2ewbOA==
X-Received: by 2002:a17:906:3a15:b0:73d:80bf:542c with SMTP id z21-20020a1709063a1500b0073d80bf542cmr8662157eje.633.1663963418805;
        Fri, 23 Sep 2022 13:03:38 -0700 (PDT)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com. [209.85.221.46])
        by smtp.gmail.com with ESMTPSA id h6-20020a170906260600b0077ce503bd77sm4339983ejc.129.2022.09.23.13.03.38
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Sep 2022 13:03:38 -0700 (PDT)
Received: by mail-wr1-f46.google.com with SMTP id z6so1564402wrq.1
        for <devicetree@vger.kernel.org>; Fri, 23 Sep 2022 13:03:38 -0700 (PDT)
X-Received: by 2002:adf:f90d:0:b0:20c:de32:4d35 with SMTP id
 b13-20020adff90d000000b0020cde324d35mr6186264wrr.583.1663963418082; Fri, 23
 Sep 2022 13:03:38 -0700 (PDT)
MIME-Version: 1.0
References: <20220923094242.4361-1-sheng-liang.pan@quanta.corp-partner.google.com>
 <20220923174224.v3.1.Ide53082044aac56877c4ff5725777769e377476a@changeid> <3cadff28-197a-5e6c-cbb8-eb9e816e5166@linaro.org>
In-Reply-To: <3cadff28-197a-5e6c-cbb8-eb9e816e5166@linaro.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Fri, 23 Sep 2022 13:03:26 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UAw0sSvDpH0e5yKyXLnYiGnxxs_BTWSO5ozKqH0UswWQ@mail.gmail.com>
Message-ID: <CAD=FV=UAw0sSvDpH0e5yKyXLnYiGnxxs_BTWSO5ozKqH0UswWQ@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: arm: qcom: Separete LTE/WIFI SKU for sc7280-evoker
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Sheng-Liang Pan <sheng-liang.pan@quanta.corp-partner.google.com>,
        LKML <linux-kernel@vger.kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Fri, Sep 23, 2022 at 5:15 AM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 23/09/2022 11:42, Sheng-Liang Pan wrote:
> > evoker will have WIFI/LTE SKU, separete it for each different setting.
> >
> > Signed-off-by: Sheng-Liang Pan <sheng-liang.pan@quanta.corp-partner.google.com>
> > ---
> >
> > Changes in v3:
> > - none
>
> Don't sent the same version. Either fix what I asked for or keep
> discussing the topic.
>
> Ignoring comments will not get the patch merged.

I agree with Krzysztof here. I can't see any difference between v2 and
v3, so I assume that you meant to fix his comment (spell "separete"
correctly in the commit message _and_ ${SUBJECT}) but somehow did
something wrong when sending v3.

In any case, other than the typo this looks fine to me. Feel free to
add my Reviewed-by when the typo is fixed.


-Doug
