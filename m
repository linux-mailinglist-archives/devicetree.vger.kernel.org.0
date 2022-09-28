Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8CA0B5EE7D9
	for <lists+devicetree@lfdr.de>; Wed, 28 Sep 2022 23:10:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233585AbiI1VJz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Sep 2022 17:09:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35004 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234850AbiI1VJ1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Sep 2022 17:09:27 -0400
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ECEBDF6859
        for <devicetree@vger.kernel.org>; Wed, 28 Sep 2022 14:04:25 -0700 (PDT)
Received: by mail-ed1-x52c.google.com with SMTP id a41so18868581edf.4
        for <devicetree@vger.kernel.org>; Wed, 28 Sep 2022 14:04:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=q/GKAyyF0vF1eWzJ1k0yLeMrfcWHaRkvaCbw2GvKS5w=;
        b=H7SFjs+BVe498MJEl3L9bI5G5W+1u1h2GbtuS7vrhh7P+e05VpYrDNFWp68HOubH9d
         Q/oyVXSpZqMudYWJKw1hR0rNw0iU/7q9vtltmHL+XYsDz8mpYWkSmySMRSMtpwvbxnGd
         PfNzo+l5nF8WRGdAqhEKnszfJW55MkO8O4cw4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=q/GKAyyF0vF1eWzJ1k0yLeMrfcWHaRkvaCbw2GvKS5w=;
        b=i8NOuwIpApb/odmBPWkcbUTkLgMuDfuQdt2KrRKedhe8eSdMDux/C+xWaF920l2Pzi
         z3x1OjMI3+eA/YlE6EqxSVqlvxWvDbh8E+Akji0JZLCJXHcedSoydSf+Hfy6gjiHmKRO
         1zxzvElBACA003vhlShUO+FbRAWLT/w5uki7QtHasFdXT6/Pe/m/2z5FzyIWOCJHLBV0
         Cg+kpHt3uHlwXX8aRo3IQGkzA3p4u08qhxIuDex5porzkY0dtlQ45IHTfKj5aaQAUNUz
         1eM/xIi9yU+htJ6Xj7eWhVAiSQD68T35mj27vOGybdowRYip60K2w+94fpj2XBE50iG7
         08HQ==
X-Gm-Message-State: ACrzQf0AxQUxiqv7rR+R3347rSUHekph2e3e7rKZ9fqr3nbcmOU5xItJ
        vW6SFgaB9gt6Rc2bD1+g1vuYTJAprZIU2l4r
X-Google-Smtp-Source: AMsMyM6Ezhe9JI2PgW3XZm/q1KvOtYcYpRPAKCfC+G1TkXXX+qdGUtaQ0EthT9vCDcy8LaSbjovWKA==
X-Received: by 2002:a05:6402:528a:b0:454:8613:6560 with SMTP id en10-20020a056402528a00b0045486136560mr36579499edb.252.1664399045404;
        Wed, 28 Sep 2022 14:04:05 -0700 (PDT)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com. [209.85.221.50])
        by smtp.gmail.com with ESMTPSA id j9-20020a17090623e900b0077f4f63a6f4sm2924959ejg.112.2022.09.28.14.04.04
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Sep 2022 14:04:04 -0700 (PDT)
Received: by mail-wr1-f50.google.com with SMTP id n10so21561983wrw.12
        for <devicetree@vger.kernel.org>; Wed, 28 Sep 2022 14:04:04 -0700 (PDT)
X-Received: by 2002:a5d:522f:0:b0:228:dc7f:b9a8 with SMTP id
 i15-20020a5d522f000000b00228dc7fb9a8mr22712807wra.617.1664399043934; Wed, 28
 Sep 2022 14:04:03 -0700 (PDT)
MIME-Version: 1.0
References: <20220927112343.2700216-1-sheng-liang.pan@quanta.corp-partner.google.com>
 <20220927192234.v4.1.Ide53082044aac56877c4ff5725777769e377476a@changeid>
In-Reply-To: <20220927192234.v4.1.Ide53082044aac56877c4ff5725777769e377476a@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 28 Sep 2022 14:03:52 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Uk8i+JMVEPthpuQj-rNJVzCXaYRrTW4td4hE1JfCDYbg@mail.gmail.com>
Message-ID: <CAD=FV=Uk8i+JMVEPthpuQj-rNJVzCXaYRrTW4td4hE1JfCDYbg@mail.gmail.com>
Subject: Re: [PATCH v4 1/2] dt-bindings: arm: qcom: Separate LTE/WIFI SKU for sc7280-evoker
To:     Sheng-Liang Pan <sheng-liang.pan@quanta.corp-partner.google.com>
Cc:     LKML <linux-kernel@vger.kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, Sep 27, 2022 at 4:25 AM Sheng-Liang Pan
<sheng-liang.pan@quanta.corp-partner.google.com> wrote:
>
> evoker will have WIFI/LTE SKU, separate it for each different setting.
>
> Signed-off-by: Sheng-Liang Pan <sheng-liang.pan@quanta.corp-partner.google.com>
> ---
>
> Changes in v4:
> - fix typo in tittle and commit
>
>  Documentation/devicetree/bindings/arm/qcom.yaml | 5 +++++
>  1 file changed, 5 insertions(+)

Reviewed-by: Douglas Anderson <dianders@chromium.org>
