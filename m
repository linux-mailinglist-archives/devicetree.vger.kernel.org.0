Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 30188523F3C
	for <lists+devicetree@lfdr.de>; Wed, 11 May 2022 23:09:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1343740AbiEKVJF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 May 2022 17:09:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35708 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244989AbiEKVJF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 May 2022 17:09:05 -0400
Received: from mail-oa1-x32.google.com (mail-oa1-x32.google.com [IPv6:2001:4860:4864:20::32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 411439B1AC
        for <devicetree@vger.kernel.org>; Wed, 11 May 2022 14:09:04 -0700 (PDT)
Received: by mail-oa1-x32.google.com with SMTP id 586e51a60fabf-d39f741ba0so4307510fac.13
        for <devicetree@vger.kernel.org>; Wed, 11 May 2022 14:09:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=lqtfubk7Hrb8lJoDJxWOzLc9PztEt6fZQ5kqLQlhvTc=;
        b=Fc3o3I0BqRikt2fk7xWUgF3TEVAR9OaGDwb4PmdfhORz4xdbDFQJsm3VuypKTYAkAj
         jHOZWlDdAkP7CR3rcvofleydnY5KLXwl0gXJrc9AKXmwhOuTkExrmw7DkKkcu68REeCH
         FHiD5Wleh8agi6wB/KtEChKlavAq9O3dkSI+k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=lqtfubk7Hrb8lJoDJxWOzLc9PztEt6fZQ5kqLQlhvTc=;
        b=aLeSG4J+DIT7GKwocWtR82nuQCZP1V/KD7xbg3AgCBraFWjRLSbG2Z3tKdKCuHJdLF
         98+DAaqSGf0ApCHTa1vjQelfcrjFbz0s0m5mjRh8YNO10Ilwo2aqKQKWgT0yqobcPvtD
         /g4/To2nve1oBJ5BcWqaZOKg+SqbhsTgEhp6xJzUSIMgGEtiz7Nk2LBCMsJJ4aRUk/ir
         xzvPj4GJbgkQTUbSHGF8HNBL+NveKkSzGEvknLeP0igkkqYNgFIJOh/L4iRPjGRZ7/Fd
         HTI6Sx68MK/RPmb1/3MJcAEOdOBJJE57uOjhndEi1A2b2t4emMcHWSqfGYvO4nXWWlt1
         a1Sw==
X-Gm-Message-State: AOAM532uGHHlldZkIWoZnj9dsTViIFxYq+bPnph1AeEDzWUVtmEk/YjH
        YMJuiD0NoZz8b7WZwR2iiG4TtmIAdoSPkeP5SeuQZA==
X-Google-Smtp-Source: ABdhPJyzY8NSTk+TBHA5a8x5foiT//cEfAWwheh/EgZpFZ1OOo9rp37wqpfDkPaRzjkj0P2RYr8cHHSXjp64G0nucaE=
X-Received: by 2002:a05:6870:558e:b0:e1:db7c:26aa with SMTP id
 n14-20020a056870558e00b000e1db7c26aamr3845551oao.63.1652303343312; Wed, 11
 May 2022 14:09:03 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 11 May 2022 14:09:02 -0700
MIME-Version: 1.0
In-Reply-To: <1652257162-23874-2-git-send-email-quic_sibis@quicinc.com>
References: <1652257162-23874-1-git-send-email-quic_sibis@quicinc.com> <1652257162-23874-2-git-send-email-quic_sibis@quicinc.com>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Wed, 11 May 2022 14:09:02 -0700
Message-ID: <CAE-0n51gQ=-LH5rAzib8jQbGmNFwdhburbXQ+i+LE7gGWHE_-g@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] arm64: dts: qcom: sc7280: Add proxy interconnect
 requirements for modem
To:     Sibi Sankar <quic_sibis@quicinc.com>, bjorn.andersson@linaro.org,
        robh+dt@kernel.org
Cc:     ohad@wizery.com, agross@kernel.org, mathieu.poirier@linaro.org,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        mka@chromium.org, krzysztof.kozlowski+dt@linaro.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Sibi Sankar (2022-05-11 01:19:21)
> Add interconnects that are required to be proxy voted upon during modem
> bootup on SC7280 SoCs.
>
> Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
> Signed-off-by: Sibi Sankar <quic_sibis@quicinc.com>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
