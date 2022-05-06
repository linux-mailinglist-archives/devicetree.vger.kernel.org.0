Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1009151DAAF
	for <lists+devicetree@lfdr.de>; Fri,  6 May 2022 16:39:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1379312AbiEFOmq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 6 May 2022 10:42:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35132 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1442285AbiEFOmk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 6 May 2022 10:42:40 -0400
Received: from mail-oi1-x22f.google.com (mail-oi1-x22f.google.com [IPv6:2607:f8b0:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 037C96AA48
        for <devicetree@vger.kernel.org>; Fri,  6 May 2022 07:38:49 -0700 (PDT)
Received: by mail-oi1-x22f.google.com with SMTP id v65so7662527oig.10
        for <devicetree@vger.kernel.org>; Fri, 06 May 2022 07:38:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=cB9ZCuVuahLmpF6pofX3h+no54YYEypOmQHJlUOz5K8=;
        b=GL8hyS2FGDXBjm+SHhoR461YRKq7ho9wpxyLIDmYxlg/kzeg9Fv3zv46XR1ANz3sqk
         9aVF+pDJV8sESH1nCmmbvOnl5DnpGQBmDxuXbHR4Ck6iFkkSfmG8HlhF9pDgX1W46oCC
         UkHNYX6AYriqe85qlmGIovPgsPOKrg4+rkAbE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=cB9ZCuVuahLmpF6pofX3h+no54YYEypOmQHJlUOz5K8=;
        b=MBa3IqAet5cxxIoXPB8ZK8wh+lqB1fQUSmSDRVIUcOX4G/UxYciIO0GYb4zcEpwJwS
         zCcnbV4Y87tlBLXjnLrrUAqG+NUt71ciI/klC8W6zm7kuipV5xo+ex5OyL/MrPhhf+SN
         4hPu68V7A/edtgfckZqaszIt5EBrjRtprLi9j63x0LFTLCW6YbmrL6PmppMgHZEAaYP1
         7LAayDBT8YuEGfeFTOXfnyEi0angXhVAG/Qd/lHggl0tRObAZRXLz2tMP6+DFZjKghu7
         8eRgWO1l12djZoSWrLff/Oszam42IJVLEwVosoplAeOIyv9e003zNjkQg8YXnD79Ad3N
         SO6A==
X-Gm-Message-State: AOAM531YmBzhMMBN/x/KCHHRVVv4CAlp4gQPkHs4MJe/XsJ9NklxBuAi
        KiW3OGbwta75BrhsxymwIKr8DVmh9c/qcovC5NWgWQ==
X-Google-Smtp-Source: ABdhPJz76yFzp2gDcKwnVNH1wIr3RsCoOICVyiedCXHmMDJuQW2+wl9pA4RkmCSmIZxUvWt6tqB+SfcHp56U/IJY7No=
X-Received: by 2002:aca:bd41:0:b0:2ec:ff42:814f with SMTP id
 n62-20020acabd41000000b002ecff42814fmr1613561oif.63.1651847929242; Fri, 06
 May 2022 07:38:49 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 6 May 2022 10:38:48 -0400
MIME-Version: 1.0
In-Reply-To: <1651742739-12338-5-git-send-email-quic_c_skakit@quicinc.com>
References: <1651742739-12338-1-git-send-email-quic_c_skakit@quicinc.com> <1651742739-12338-5-git-send-email-quic_c_skakit@quicinc.com>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Fri, 6 May 2022 10:38:48 -0400
Message-ID: <CAE-0n51i9+JPMR91EzXtCXQdL__TWanWwJ3Y4H=ip-POb=a=vw@mail.gmail.com>
Subject: Re: [PATCH V11 4/9] mfd: pm8008: Add reset-gpios
To:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Satya Priya <quic_c_skakit@quicinc.com>
Cc:     Lee Jones <lee.jones@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        quic_collinsd@quicinc.com, quic_subbaram@quicinc.com,
        quic_jprakash@quicinc.com
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

Quoting Satya Priya (2022-05-05 02:25:34)
> Add the reset-gpio toggling in the pm8008_probe() to bring
> pm8008 chip out of reset instead of doing it in DT node using
> "output-high" property.
>
> Signed-off-by: Satya Priya <quic_c_skakit@quicinc.com>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
