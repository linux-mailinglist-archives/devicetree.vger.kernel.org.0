Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2645F41D2B7
	for <lists+devicetree@lfdr.de>; Thu, 30 Sep 2021 07:32:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348090AbhI3FdO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Sep 2021 01:33:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51386 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1348087AbhI3FdO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Sep 2021 01:33:14 -0400
Received: from mail-ot1-x336.google.com (mail-ot1-x336.google.com [IPv6:2607:f8b0:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 45847C06176C
        for <devicetree@vger.kernel.org>; Wed, 29 Sep 2021 22:31:32 -0700 (PDT)
Received: by mail-ot1-x336.google.com with SMTP id e66-20020a9d2ac8000000b0054da8bdf2aeso3638068otb.12
        for <devicetree@vger.kernel.org>; Wed, 29 Sep 2021 22:31:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=O2fZWX65wwxbZ/8+54tIkBzEVMUloMahRKU53//DuPY=;
        b=Sp705WrfblJnCXVzdG4cvRpZAkD9m35RykpNAMAk5aeuQ5jiMtQbUX5NyasewstQTr
         qtDlB+TplSRffbHto+BBPoc6JVna7N1cuZGVCA00pI9s27QsznAqXq4pWo/jWpmXEM4Y
         FT+Zwz9Eo60x0oppPyskLn2aAGRHSUgLXJjac=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=O2fZWX65wwxbZ/8+54tIkBzEVMUloMahRKU53//DuPY=;
        b=GG750PNcoZzrAgqy/N7VwAgO0EfzYvcI7unbJ3lyOk7pDvzhtxcNmTNeM1VIUySRcL
         MjqiCJygBQFxp9SjvDkxqH/7coaJs8HwAsIULgo7NVPAZMiHsB5U/eJtGudVoSU+NXAL
         TgO79H6syGw4vi8EYU/q2q2CpO91sUunwWJ3IMpRna943EIDI9Co1wkOb+G4WL6kcucC
         IxZr0dgoKRcpkaX/yzxdZLAzzY0tx2qqZM2pEfh3HoM9MXuHVQIDJLhJLen07Jn6lIz1
         SG1JlzlJ7YzBqey44iPuhmh1rQCUvXfoq8KIRuPiJrnk2xkaGS+DyegqWC8rFeFlJe66
         SRcA==
X-Gm-Message-State: AOAM53321x6X/IlB4sTdSYKWVKdcreGHYYnSfrnZr8T2/wVL1vqS/WA0
        0Vl6Lr2Y3Z1uckFu7JOEXEk+mcZRz/kWyKt4y82/wQ==
X-Google-Smtp-Source: ABdhPJx3b00gsa5ra1+RLu/Oq+CIGE39JSoVMgtcaYIKHIFNFYRX0dyVO71PDuq2Fwi0fDGtGQx1ri+xit5xoeyzju4=
X-Received: by 2002:a05:6830:708:: with SMTP id y8mr3460444ots.77.1632979891627;
 Wed, 29 Sep 2021 22:31:31 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 29 Sep 2021 22:31:31 -0700
MIME-Version: 1.0
In-Reply-To: <1632892123-11006-1-git-send-email-rajpat@codeaurora.org>
References: <1632892123-11006-1-git-send-email-rajpat@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Wed, 29 Sep 2021 22:31:31 -0700
Message-ID: <CAE-0n51Vnb1YKZKtg-2iSK7r+50RrbURW5TN6Wyvc+9b21jZNA@mail.gmail.com>
Subject: Re: [PATCH V1] arm64: dts: qcom: sc7280: Add 200MHz in qspi_opp_table
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Doug Anderson <dianders@chromium.org>,
        Mark Brown <broonie@kernel.org>,
        Rajesh Patil <rajpat@codeaurora.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, rnayak@codeaurora.org,
        saiprakash.ranjan@codeaurora.org, msavaliy@qti.qualcomm.com,
        skakit@codeaurora.org, mka@chromium.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Rajesh Patil (2021-09-28 22:08:43)
> Add 200MHz OPP in qspi_opp_table
>
> Signed-off-by: Rajesh Patil <rajpat@codeaurora.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
