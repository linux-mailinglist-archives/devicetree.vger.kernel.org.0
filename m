Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id CADE715ADE2
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2020 17:58:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728781AbgBLQ6u (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Feb 2020 11:58:50 -0500
Received: from mail-pf1-f194.google.com ([209.85.210.194]:40185 "EHLO
        mail-pf1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726351AbgBLQ6u (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Feb 2020 11:58:50 -0500
Received: by mail-pf1-f194.google.com with SMTP id q8so1522846pfh.7
        for <devicetree@vger.kernel.org>; Wed, 12 Feb 2020 08:58:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:content-transfer-encoding:in-reply-to:references
         :subject:from:cc:to:date:message-id:user-agent;
        bh=bK+cvl8zl3lFOBR7bGFC49ixHUgxXY0M1LIjl6eCa7g=;
        b=NlaN8NZnHVoC2MsosIgILZ3NWppGuVSUhrH+t3G+ZjgTaeU9geNHIZoJ4yrqViRc4S
         GuvHMdMQsjB2d7o2umi7zud7ryWUw8IRQTdPeV3ucViDk0QkOJLkT0XQHyI9toUPWM1h
         TlTmAY+Eu0E3f0YiwnQMZ3xGlVVIEQiapH5bg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:content-transfer-encoding
         :in-reply-to:references:subject:from:cc:to:date:message-id
         :user-agent;
        bh=bK+cvl8zl3lFOBR7bGFC49ixHUgxXY0M1LIjl6eCa7g=;
        b=F0Fhc16n1urfOne5sKI/+51H756BUISIjEJJ2xGOyyFmxocVnEMg1DRuhCgXv/wxLs
         Q+XnCtBCHWPi1bkxwphLx0mkQMFrTxsyU6wbvhvDtGbIoop/7WnM2U6rWWeE5ghQGFtE
         G+M4v43EYfLE/NVfO1YOSMaH8u7mivwnaPzw9hm+BykRKYWi3XBbRQx+cGSoRP1zRmBB
         Zbc9JIQUL+yMRHBm6swo/HoEPmD8irNuexyowMEp2iQIB2t4Aaa5kvMH0qfRkb4vtmC+
         HqdIx8qen1X2sPdTHe79wVCJMzbGyjIP6HGm5VRYn0/2cHmmw2x2ZeOyq2i1ZXqovNT4
         JLrg==
X-Gm-Message-State: APjAAAWl3o2XLInbCI17N8VgqPgKAKsx9yb2k/58Suz/WUfyP2DFBqPq
        QcH9Yx36hKR31WhEO0Y8FEwJmw==
X-Google-Smtp-Source: APXvYqydHiVqEawLuj0kN/UatDCVMzDQCKH2Edo9QUQTHOVoTBw6W167ZCYnwSPn4e1U0H9BAmp+Iw==
X-Received: by 2002:aa7:951c:: with SMTP id b28mr9136009pfp.97.1581526728668;
        Wed, 12 Feb 2020 08:58:48 -0800 (PST)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
        by smtp.gmail.com with ESMTPSA id 13sm1497030pfj.68.2020.02.12.08.58.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Feb 2020 08:58:48 -0800 (PST)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <1581492673-27295-1-git-send-email-sbhanu@codeaurora.org>
References: <1581492673-27295-1-git-send-email-sbhanu@codeaurora.org>
Subject: Re: [PATCH V3] mmc: sdhci-msm: Update system suspend/resume callbacks of sdhci-msm platform driver
From:   Stephen Boyd <swboyd@chromium.org>
Cc:     asutoshd@codeaurora.org, stummala@codeaurora.org,
        sayalil@codeaurora.org, cang@codeaurora.org,
        vbadigan@codeaurora.org, rampraka@codeaurora.org,
        linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        agross@kernel.org, bjorn.andersson@linaro.org,
        Shaik Sajida Bhanu <sbhanu@codeaurora.org>
To:     Shaik Sajida Bhanu <sbhanu@codeaurora.org>,
        adrian.hunter@intel.com, mka@chromium.org, robh+dt@kernel.org,
        ulf.hansson@linaro.org
Date:   Wed, 12 Feb 2020 08:58:47 -0800
Message-ID: <158152672736.121156.11425666862560332951@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Shaik Sajida Bhanu (2020-02-11 23:31:13)
> The existing suspend/resume callbacks of sdhci-msm driver are just
> gating/un-gating the clocks. During suspend cycle more can be done
> like disabling controller, disabling card detection, enabling wake-up eve=
nts.
>=20
> So updating the system pm callbacks for performing these extra
> actions besides controlling the clocks.
>=20
> Signed-off-by: Shaik Sajida Bhanu <sbhanu@codeaurora.org>

Reviewed-by: Stephen Boyd <swboyd@chromium.org>

>=20
> Changes since V2:
>     Removed disabling/enabling pwr-irq from system pm ops.
>=20
> Changes since V1:
>     Invoking pm_runtime_force_suspend/resume instead of
>     sdhci_msm_runtime_suepend/resume.
> ---

This triple dash should come right after the SoB line.
