Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 187EA58DC31
	for <lists+devicetree@lfdr.de>; Tue,  9 Aug 2022 18:35:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245149AbiHIQf1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Aug 2022 12:35:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50378 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245150AbiHIQfO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Aug 2022 12:35:14 -0400
Received: from mail-oi1-x22c.google.com (mail-oi1-x22c.google.com [IPv6:2607:f8b0:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E8475101
        for <devicetree@vger.kernel.org>; Tue,  9 Aug 2022 09:35:11 -0700 (PDT)
Received: by mail-oi1-x22c.google.com with SMTP id u9so14426254oiv.12
        for <devicetree@vger.kernel.org>; Tue, 09 Aug 2022 09:35:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:from:to:cc;
        bh=ZMc2/rbQ4xMkBKSMUQ5lQRSNwUqs/YewJHSa/AEK+WU=;
        b=nzH8WYSn1ntQKIxbWaHZbS3CuNTwi5ms2/6WL7WS/w71/gSYfJruipKNs4HmFAjmxR
         Jqm9hti9SjPAMq2AglnqfkbBAlteEPW6Hq3XJ56Pz5aTpa33Rv5v6/w5lxAZAtrN++ZJ
         Vqz2TT/guGXb9uoPkC+QXmxWGAEaMiAFefhZY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:x-gm-message-state:from:to:cc;
        bh=ZMc2/rbQ4xMkBKSMUQ5lQRSNwUqs/YewJHSa/AEK+WU=;
        b=iFF1j7G+eKbnz9DxNZu0xn3FzEx9dIti97V2W5jt92tYjDpb1nAePqtn1rhtFp/hH0
         k1l5JK0JwhYQ0RQ5I3I5WtBSUmimpYonUYOhHNUsv3helcwH48qdyk63+PGl4e9W4imY
         pfYbvThTbpFkPa13HdnAl9zwKQGLO/NojRKg50m3F/kRsZzyL7+vwG5rzn1aImC+1tXW
         xIORM0XglcecnSNsrkIJSM6efhPYtf8SJjYGKl3XcvDVNAcgv/s0KyK2hGYBaPdguUFf
         15YrE8D4LYaiKqE+ocimn1M/tsZSk66SHnuLThXgvLKWzQl4GmmNYWiw5M+stefbGFRo
         5U0g==
X-Gm-Message-State: ACgBeo0Fn7dqy5XdiQz956n9rlfxsiBLNh1Ufg0CSyCcvDJFAuOzgHqs
        O0fDVDio6Cqk/NBRHTnvyhKMpFp2QCkSwU4sEPn4Tw==
X-Google-Smtp-Source: AA6agR5NRdZDIrlr3Dy4JVSTO9fCWj2tztSQDMMqLLukD+0KUdG4kXh4VFtp7W4s44JVMZyd7AasMUnAVlEc12LWu88=
X-Received: by 2002:a05:6808:1588:b0:342:ce6d:bfcd with SMTP id
 t8-20020a056808158800b00342ce6dbfcdmr7072300oiw.44.1660062911169; Tue, 09 Aug
 2022 09:35:11 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 9 Aug 2022 11:35:10 -0500
MIME-Version: 1.0
In-Reply-To: <1660026909-7365-4-git-send-email-quic_c_skakit@quicinc.com>
References: <1660026909-7365-1-git-send-email-quic_c_skakit@quicinc.com> <1660026909-7365-4-git-send-email-quic_c_skakit@quicinc.com>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Tue, 9 Aug 2022 11:35:10 -0500
Message-ID: <CAE-0n50TWAug7LFRXzAi+EuBy6TQ_U4OsTmVLHsEAPu2pkwE6Q@mail.gmail.com>
Subject: Re: [PATCH V4 3/3] arm64: dts: qcom: sc7280: Update lpasscore node
To:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Satya Priya <quic_c_skakit@quicinc.com>
Cc:     Douglas Anderson <dianders@chromium.org>,
        Andy Gross <agross@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        quic_tdas@quicinc.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Satya Priya (2022-08-08 23:35:09)
> To maintain consistency with other lpass nodes(lpass_audiocc,
> lpass_aon and lpass_hm), update lpasscore to lpass_core.
>
> Fixes: 9499240d15f2 ("arm64: dts: qcom: sc7280: Add lpasscore & lpassaudio clock controllers")
> Signed-off-by: Taniya Das <quic_tdas@quicinc.com>
> Signed-off-by: Satya Priya <quic_c_skakit@quicinc.com>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
