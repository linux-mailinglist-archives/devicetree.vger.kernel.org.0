Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9784D63759C
	for <lists+devicetree@lfdr.de>; Thu, 24 Nov 2022 10:54:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230141AbiKXJyh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Nov 2022 04:54:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39998 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230052AbiKXJyU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Nov 2022 04:54:20 -0500
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 86E4512F414
        for <devicetree@vger.kernel.org>; Thu, 24 Nov 2022 01:54:15 -0800 (PST)
Received: by mail-wr1-x430.google.com with SMTP id v1so1649208wrt.11
        for <devicetree@vger.kernel.org>; Thu, 24 Nov 2022 01:54:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CLBDPUP9FGkKDGO1g0btIJtnmTUhoMJwrJJH5s4jVyk=;
        b=fRiEi4MXYM5dZgMBZbMA0YrY792sGlXxn0DfGEpZMRX6+cPgbulCtsGeFdsIFXqbjp
         8HAAWrZGtb3qVQa9vPNGkPrJU7xpa66WzlAUHCyq0Mih6V/JcaJTWGL8ztJXmUQqDrMb
         CBpp6pHtqaa+CWFQxvJfFcmrHcVqL/qgOYEDpSjJWftQVOBihPIeVkgBRPbCBHRuqn9T
         rdOv0/OSvRAg7zpCBsvnH5SIMv2N59IsMwpC1CsN078+9OYx6C6s8c4m3H5nuuTClPn4
         zblfiQNk/L7HyI2L+mVbP0dQL1FvYJzNtHTSO5YB1uX8kCIFOc2oatll1UPzEnHhhNmt
         lNag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CLBDPUP9FGkKDGO1g0btIJtnmTUhoMJwrJJH5s4jVyk=;
        b=Hi2A5ahEw8p3LCjfMvsIkwp4d1P8OhDL+4P999tS3eNgsbakJb/zQaZA5Kl/Wvf/D2
         5XEmLa/tBWmRZTJYw/X6wTmij5pOgwBFso+C2NslfvsC5nbJpmWc1MHS6/iKLvMlv8r9
         Zk6KE9S+xIuCrOf+dMJkBfzG0Qr5BiCAR/RraUdf/s+UBM8I0uCLg19dut63ywVwtX7r
         t8uFIIMAQ18geQv53hnKTG91D2oeuJUZSQBLex90OJnzyfDhdh91WrKi0geCYMIDrM1T
         1c6vzDXg1mGmFJczQkopiDUoRqexbNZVBW/7oiAHN5sry7DbGnoXQFng6DCRe4rUlTrn
         HCZA==
X-Gm-Message-State: ANoB5pkBoeiBCzt/gHf7e3IZ8KRWDGmnf4OpJKiSbjWVi/AUInZ1LKrN
        OpoHQJlvvIOQ7T8yVcjlf6W6VdD0Z1xrHXfExkCMhw==
X-Google-Smtp-Source: AA0mqf416D+WFJos8wQzMUQ33QM0jwoO1N4c0LIU9fiyYurrcYArWa7LcxtXjjJUcBHysRUqQqaEC7UbWnu5r3cNOnE=
X-Received: by 2002:adf:e28b:0:b0:241:c2c3:26c8 with SMTP id
 v11-20020adfe28b000000b00241c2c326c8mr16582659wri.278.1669283653936; Thu, 24
 Nov 2022 01:54:13 -0800 (PST)
MIME-Version: 1.0
References: <20191022114505.196852-1-tzungbi@google.com> <20191022193301.1.I3039014cf259de5e4d6315fc05dff111591a0901@changeid>
 <d051f427516fb7e5f7161e60d7e0033740a2aeb4.camel@mediatek.com>
In-Reply-To: <d051f427516fb7e5f7161e60d7e0033740a2aeb4.camel@mediatek.com>
From:   Tzung-Bi Shih <tzungbi@google.com>
Date:   Thu, 24 Nov 2022 17:54:03 +0800
Message-ID: <CA+Px+wWGGjTMydcyw=jT=T+w96A=GTO_qsgmvZTQiyQ1R2tAoA@mail.gmail.com>
Subject: Re: [PATCH 1/6] ASoC: hdmi-codec: add PCM trigger operator
To:     =?UTF-8?B?QWxsZW4tS0ggQ2hlbmcgKOeoi+WGoOWLsyk=?= 
        <Allen-KH.Cheng@mediatek.com>
Cc:     "narmstrong@baylibre.com" <narmstrong@baylibre.com>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "jernej.skrabec@siol.net" <jernej.skrabec@siol.net>,
        "broonie@kernel.org" <broonie@kernel.org>,
        "a.hajda@samsung.com" <a.hajda@samsung.com>,
        "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
        "jonas@kwiboo.se" <jonas@kwiboo.se>,
        "cychiang@google.com" <cychiang@google.com>,
        "dgreid@google.com" <dgreid@google.com>,
        "hsinyi@chromium.org" <hsinyi@chromium.org>,
        "Laurent.pinchart@ideasonboard.com" 
        <Laurent.pinchart@ideasonboard.com>,
        "allen.chen@ite.com.tw" <allen.chen@ite.com.tw>,
        "alsa-devel@alsa-project.org" <alsa-devel@alsa-project.org>,
        =?UTF-8?B?SmlheGluIFl1ICjkv57lrrbpkasp?= <Jiaxin.Yu@mediatek.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-17.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        ENV_AND_HDR_SPF_MATCH,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        USER_IN_DEF_DKIM_WL,USER_IN_DEF_SPF_WL autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Nov 24, 2022 at 1:52 PM Allen-KH Cheng (=E7=A8=8B=E5=86=A0=E5=8B=B3=
)
<Allen-KH.Cheng@mediatek.com> wrote:
> We would want to confirm with you as we work on the hdmi-codec for the
> mt8186.
>
> Do you have any plan to continue working on this series? We may take
> over as well.

No (from testing's perspective).  Please take over it as you require.
