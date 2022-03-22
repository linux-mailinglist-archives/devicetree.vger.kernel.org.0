Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2BDC44E3FDD
	for <lists+devicetree@lfdr.de>; Tue, 22 Mar 2022 14:54:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235922AbiCVNzz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Mar 2022 09:55:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51080 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234724AbiCVNzy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Mar 2022 09:55:54 -0400
Received: from mail-il1-x136.google.com (mail-il1-x136.google.com [IPv6:2607:f8b0:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BDB192613A
        for <devicetree@vger.kernel.org>; Tue, 22 Mar 2022 06:54:21 -0700 (PDT)
Received: by mail-il1-x136.google.com with SMTP id y7so5477423ilv.6
        for <devicetree@vger.kernel.org>; Tue, 22 Mar 2022 06:54:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=A2DscZc3AEntEFvhf0cmEbjgQhmN19fYz2yomg4IX2A=;
        b=f5lj3SZg+5/T+XDU05uwNy/6FgMMhmfX4FPfg2pB9UQi/PLqUC8vVR8zps2GDhRoyF
         D3yy67ScBm/PKtLI24Fs6de+W4AlWNYub8bnniTEebRzROb9FxZV3YrmGPlWkWt2dr4v
         6nOr+GqcEfaADKVbBLftjdARjMxxyv1Efcymo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=A2DscZc3AEntEFvhf0cmEbjgQhmN19fYz2yomg4IX2A=;
        b=f7c6LG5iZUsFUJUp1reBeWmJ6aJZP2tvhSHosBJA7+4e4BSh+yxgV7wFjrP2aev9tX
         oTpRoAkH19h6M1nuF3IMJmCbS6tMr6BQo+Rbr/Y0yD5wuOSMYPpj7addiW7NUQl9xlz5
         dNofCo3VsebqgZBTB6irToWTnls6YS4IuDf06BtZ1cekWgE+21S63+O84RH0pHGnoZvr
         +3Mt7nKeACdaChkjvXVer0NGb3QPNqIGidybqd3lnr8mLQoPwut1Ui50KgA5ZUBifvQn
         1ahJSIZLjOD9eC2S9e3GdNVZvkUIsNXkoncgqFhsBfxak+tD6bGV1RwW5Y1z13+5KpuH
         PgmQ==
X-Gm-Message-State: AOAM533eSujYqErzvb2fYubjbEA93Uqof00stWWH9ttAAyTY+0GBZRTf
        gOk4RVxmgJxd+Zo2hYuYZBRTsT94GUUtS2EA
X-Google-Smtp-Source: ABdhPJxopzvzHDrPGb8WsTx8e7qkzjWdjnR9HMsLreJM8Oz+F14ZKQC6hWbUjrypxFHZYuG1q2wFWg==
X-Received: by 2002:a92:c261:0:b0:2c7:c60d:cb78 with SMTP id h1-20020a92c261000000b002c7c60dcb78mr13166703ild.213.1647957260895;
        Tue, 22 Mar 2022 06:54:20 -0700 (PDT)
Received: from mail-io1-f47.google.com (mail-io1-f47.google.com. [209.85.166.47])
        by smtp.gmail.com with ESMTPSA id l1-20020a056e021c0100b002c668d6ec39sm10913642ilh.53.2022.03.22.06.54.19
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Mar 2022 06:54:19 -0700 (PDT)
Received: by mail-io1-f47.google.com with SMTP id w7so20261378ioj.5
        for <devicetree@vger.kernel.org>; Tue, 22 Mar 2022 06:54:19 -0700 (PDT)
X-Received: by 2002:a5d:9e02:0:b0:645:d25c:30bd with SMTP id
 h2-20020a5d9e02000000b00645d25c30bdmr12441220ioh.208.1647957258853; Tue, 22
 Mar 2022 06:54:18 -0700 (PDT)
MIME-Version: 1.0
References: <20220322092524.1.Ied05fc4b996737e3481861c6ab130a706f288412@changeid>
In-Reply-To: <20220322092524.1.Ied05fc4b996737e3481861c6ab130a706f288412@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Tue, 22 Mar 2022 06:54:06 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Xe_6s8PV=rqwu0BFyfTij-VSVJ6wRpv-VN9XvdFx4A+A@mail.gmail.com>
Message-ID: <CAD=FV=Xe_6s8PV=rqwu0BFyfTij-VSVJ6wRpv-VN9XvdFx4A+A@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: switch panel compatible to "edp-panel"
 for limozeen
To:     Ivy Jian <ivyjian417@gmail.com>
Cc:     LKML <linux-kernel@vger.kernel.org>,
        Pan Sheng-Liang <sheng-liang.pan@quanta.corp-partner.google.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Mon, Mar 21, 2022 at 6:25 PM Ivy Jian <ivyjian417@gmail.com> wrote:
>
> some panel can't light up with new board with ps8640, switch compatible
> panel define to make it workable.
>
> Signed-off-by: Pan Sheng-Liang <sheng-liang.pan@quanta.corp-partner.google.com>
> Signed-off-by: Ivy Jian <ivyjian417@gmail.com>
> ---
>
>  .../boot/dts/qcom/sc7180-trogdor-lazor-limozeen-nots-r9.dts     | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Reviewed-by: Douglas Anderson <dianders@chromium.org>
