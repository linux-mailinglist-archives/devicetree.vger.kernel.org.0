Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9E9986AFB4
	for <lists+devicetree@lfdr.de>; Tue, 16 Jul 2019 21:24:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388358AbfGPTYq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Jul 2019 15:24:46 -0400
Received: from mail-lf1-f67.google.com ([209.85.167.67]:46488 "EHLO
        mail-lf1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728137AbfGPTYp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 Jul 2019 15:24:45 -0400
Received: by mail-lf1-f67.google.com with SMTP id z15so10282688lfh.13
        for <devicetree@vger.kernel.org>; Tue, 16 Jul 2019 12:24:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=47dsVCKrSoPe/pZADR7jkZb/IS3gSAN3kYpdocS+6Gk=;
        b=TVwoK5PvCTdlFm50cwj1ghgfLICUPGD3FpnvlwlLQJLKTj5HsmMMHVNIYSPqStP543
         kecXULtc+un7k2+WkzQTZPiUgMnckZu7+pZg+PwT2CioRmoWUBSOYAlrVMe5Zze+8QJ/
         q5Cw7mRYOee6yeFwXiHd9iLNiieZ7qOKOFVkoTG8P63oW70CIIcNN1gIErQwl0xE99oB
         ZiqGjEdr2fKQSb45X3qWNdXOlhm2haNSfhWt3FmqjNw6Fm8durrMZdau2wAs94oQjWyN
         1+if+SuNommVj71P8vqWR06zVppyR/NKLtFDsxItlkbkfFXsNfA3XIkfj+sBrPnYQOfZ
         URhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=47dsVCKrSoPe/pZADR7jkZb/IS3gSAN3kYpdocS+6Gk=;
        b=kxWa3h7zaa/C+oFcLg9Knt0UxkMzz0O4UN/rUBMVR0UJWEJ8wkt/tAA1UBWKUw6q3y
         GxdUqUF0Us9EyeE9FmkRZB3jm+MuaKxIrO+VrZft7Tw3oG6nICceRVX1W4FHXd8czmel
         0ist0bxyNysKE4T6OVJxLf33D+QIi0Gpu3nR6rf6yUObEfcxyx0bBULkCrxyvhlkiPG2
         opM0tcqCYU1BxCQsQlGCMs0sid2Mv6RkEt+/5Y3YU7xlc6W1hMTjDpyZ7X3mKDpr0MMD
         DIA5flKlj71Jgjau+Pb/px77sDpFXSD2evvBczCtH1XpRFbMyhnGSPP9U3j3A1391MW+
         hO2A==
X-Gm-Message-State: APjAAAV3uDiyjjcqFJDWbVQSkMB2F/HYend7Ex9nP+5Z7flNxgpVv3xj
        4vlh35fMAEq/Gxq6WOVzQXeU3oPrbboWymmVDpzyFQ==
X-Google-Smtp-Source: APXvYqzGG+VZT1KJvBcsGagEHLjmhbhyCJKjQH9GWIB86Z6aJnoxMnTy+yfEXMr+gzbwaVnJr8OYERTSeYLO6dJHsBA=
X-Received: by 2002:a19:5044:: with SMTP id z4mr14962771lfj.80.1563305083752;
 Tue, 16 Jul 2019 12:24:43 -0700 (PDT)
MIME-Version: 1.0
References: <1563290089-11085-1-git-send-email-aisheng.dong@nxp.com> <1563290089-11085-16-git-send-email-aisheng.dong@nxp.com>
In-Reply-To: <1563290089-11085-16-git-send-email-aisheng.dong@nxp.com>
From:   Fabio Estevam <festevam@gmail.com>
Date:   Tue, 16 Jul 2019 16:24:40 -0300
Message-ID: <CAOMZO5CTmAdxRK4FZu+Lw3WxkBzdufNJ=gE11TFSoizdYwXnbw@mail.gmail.com>
Subject: Re: [PATCH v2 15/15] arm64: defconfig: add imx8qm mek support
To:     Dong Aisheng <aisheng.dong@nxp.com>
Cc:     "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        Dong Aisheng <dongas86@gmail.com>,
        Sascha Hauer <kernel@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Fabio Estevam <fabio.estevam@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will.deacon@arm.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Dong,

On Tue, Jul 16, 2019 at 12:38 PM Dong Aisheng <aisheng.dong@nxp.com> wrote:
>
> add imx8qm mek support

The Subject and commit log does not match with the patch content.
