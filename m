Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7F34333A173
	for <lists+devicetree@lfdr.de>; Sat, 13 Mar 2021 22:38:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234811AbhCMVhi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 13 Mar 2021 16:37:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35888 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234792AbhCMVhH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 13 Mar 2021 16:37:07 -0500
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com [IPv6:2607:f8b0:4864:20::1032])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2729C061763
        for <devicetree@vger.kernel.org>; Sat, 13 Mar 2021 13:37:06 -0800 (PST)
Received: by mail-pj1-x1032.google.com with SMTP id lr10-20020a17090b4b8ab02900dd61b95c5eso10194383pjb.4
        for <devicetree@vger.kernel.org>; Sat, 13 Mar 2021 13:37:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:content-transfer-encoding:in-reply-to:references
         :subject:from:cc:to:date:message-id:user-agent;
        bh=Qt3fWyWhCO+DiGyxUNy+X1yqbX57QC78mJWjY3ciB/8=;
        b=nef1APQ3/rQBIb0kTm5c8p9G0zkDaKRyZ0nSiHkSLHp0IR2vU/oIFH/R++nkAjCFnQ
         5rUvOIgdol4DlWj25poMa7brz97yAas0fQJCiTdMfbgIE0E5Y2X7NOow2ozaW25DNVUN
         H+HipfRIhug3DLfizQ6dvwabeUi7w1nMNhywg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:content-transfer-encoding
         :in-reply-to:references:subject:from:cc:to:date:message-id
         :user-agent;
        bh=Qt3fWyWhCO+DiGyxUNy+X1yqbX57QC78mJWjY3ciB/8=;
        b=ISklDFuCQ0mhaE7UIFY++7ZaXFIiIJyAMo8Dwo+8Gd4EkdeaV2G13Qo1C311EyNbL/
         nSCoqGppNRV0QtjctxEO898EbfNSa2f5pat/TeBqud98TC+gkKB+frxumNkC0fWZMTn2
         vcY0x3lhzhbcrZOB4BEYzQ2uDhHyG5EXk24XW/OGCALlaxufwPa2biInF+vCfZG0jgme
         bnjptAKsZYtQozy3ryMfly0y/e7+Y1328ZuK+ZwPWC0F3ZN7xvALS3ETP1GV5VyQOOVi
         5IYkloZNY2Wz/diBx2UTkkqJHP7IeMSNeVk44xgFGj5xOQwhZ1oLYO3Uhn9mmCPY5/+O
         z34Q==
X-Gm-Message-State: AOAM530pg3rJt8YVETqxzBZbuoPuVLZvy3B2kKHiJfeiwvvpH2flDHsj
        PR5O+xQR8W79H6cHbEQgqC/nRg==
X-Google-Smtp-Source: ABdhPJyJ0Zlg2X2O29MOSfToCifhV+wxbhw5S/XNoVzD34se/MEbk0Cz+Rtw1P0E55KpEFZ0spvAug==
X-Received: by 2002:a17:90a:9281:: with SMTP id n1mr5315328pjo.146.1615671426533;
        Sat, 13 Mar 2021 13:37:06 -0800 (PST)
Received: from chromium.org ([2620:15c:202:201:e859:c7d5:7d7b:5ed8])
        by smtp.gmail.com with ESMTPSA id t17sm9509215pgk.25.2021.03.13.13.37.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Mar 2021 13:37:06 -0800 (PST)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <1615269111-25559-3-git-send-email-sibis@codeaurora.org>
References: <1615269111-25559-1-git-send-email-sibis@codeaurora.org> <1615269111-25559-3-git-send-email-sibis@codeaurora.org>
Subject: Re: [PATCH 2/6] dt-bindings: mailbox: Add WPSS client index to IPCC
From:   Stephen Boyd <swboyd@chromium.org>
Cc:     agross@kernel.org, mani@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Sibi Sankar <sibis@codeaurora.org>
To:     Sibi Sankar <sibis@codeaurora.org>, bjorn.andersson@linaro.org,
        p.zabel@pengutronix.de, robh+dt@kernel.org
Date:   Sat, 13 Mar 2021 13:37:04 -0800
Message-ID: <161567142471.1478170.13545214101373204364@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Sibi Sankar (2021-03-08 21:51:47)
> Add WPSS remote processor client index to Inter-Processor Communication
> Controller (IPCC) block.
>=20
> Signed-off-by: Sibi Sankar <sibis@codeaurora.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
