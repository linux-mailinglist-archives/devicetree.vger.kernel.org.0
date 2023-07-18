Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8349275763A
	for <lists+devicetree@lfdr.de>; Tue, 18 Jul 2023 10:09:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230243AbjGRIJd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Jul 2023 04:09:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41646 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230049AbjGRIJc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Jul 2023 04:09:32 -0400
Received: from mail-il1-x135.google.com (mail-il1-x135.google.com [IPv6:2607:f8b0:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9EDEF8E
        for <devicetree@vger.kernel.org>; Tue, 18 Jul 2023 01:09:31 -0700 (PDT)
Received: by mail-il1-x135.google.com with SMTP id e9e14a558f8ab-345f3e28082so26610015ab.1
        for <devicetree@vger.kernel.org>; Tue, 18 Jul 2023 01:09:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1689667771; x=1692259771;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mUZL14WYA0DLZ0DKyW91vgmsuwYwiL4W9V/M4FZV2mU=;
        b=lvLEx2hLpY2H0FHWFky1bIMahN5KEjJKoFm5Gx0swmpHj5nKgFiAlseWKhFYVmQRxb
         lxKdCMa27BhJ7prdrxdrHlYSrPcissRX7WwfaaAEIwJ6Y6li9I0DcdNvQcPg1ucnWq0+
         iQ25cRSkGFVCpr89DPgeaIuklynoskxzrKzyE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689667771; x=1692259771;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mUZL14WYA0DLZ0DKyW91vgmsuwYwiL4W9V/M4FZV2mU=;
        b=CF/jyJngXMFPWwXBXRT4lJ215qlheYVJ0y13M999GqNbWXF3tp5iAKRg/peVBDXDhK
         Z46iFGmSlfqMfJDs35bVgXrpk85ECVgwZbbeJmLvm3BaWbxV4EHBPh1eTjU8Smw2rmcv
         dS8gJpMP/KZGPaPrSgkENpS5xD9YBKqzKF6O+hSCEkXBjhlNwdQqY/rlR3GIu8Shel+/
         oHY0jwnLg5EW6mbA7L+a0sRnxtQ0BSIkr4WXtd+8jFbtRZyxHwPULXso945F3xJpnpBN
         lcfj1jWE8Y21x4wLI+RhOEVPF4kttMv9QMrPA5ilV1lyiUXJ+ABRO0zvMmOiEuy+jy7a
         IhoQ==
X-Gm-Message-State: ABy/qLa2zkj6UDGfIpC4Hu7tn7bMkRDMfUEdrfTdL/izHJMCF+tOuwrx
        iysHk7mCeLTCKjEus0jLWXN1aT1UxURzltFRVXc=
X-Google-Smtp-Source: APBJJlEieDaoojXL1XLncBhx5GJkRAYECcG1FTgvojzLWJMavLfZWRdSzA2qzw5h4l8pS6YyAyUHKw==
X-Received: by 2002:a05:6e02:1b06:b0:345:c8d4:1147 with SMTP id i6-20020a056e021b0600b00345c8d41147mr2107683ilv.16.1689667770821;
        Tue, 18 Jul 2023 01:09:30 -0700 (PDT)
Received: from mail-il1-f179.google.com (mail-il1-f179.google.com. [209.85.166.179])
        by smtp.gmail.com with ESMTPSA id t26-20020a02879a000000b0042b6a760c31sm401530jai.28.2023.07.18.01.09.30
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Jul 2023 01:09:30 -0700 (PDT)
Received: by mail-il1-f179.google.com with SMTP id e9e14a558f8ab-3476c902f2aso26480175ab.3
        for <devicetree@vger.kernel.org>; Tue, 18 Jul 2023 01:09:30 -0700 (PDT)
X-Received: by 2002:a05:6e02:2144:b0:348:8aec:179c with SMTP id
 d4-20020a056e02214400b003488aec179cmr2013630ilv.32.1689667770016; Tue, 18 Jul
 2023 01:09:30 -0700 (PDT)
MIME-Version: 1.0
References: <20230627063946.14935-1-shawn.sung@mediatek.com>
In-Reply-To: <20230627063946.14935-1-shawn.sung@mediatek.com>
From:   Fei Shao <fshao@chromium.org>
Date:   Tue, 18 Jul 2023 16:08:53 +0800
X-Gmail-Original-Message-ID: <CAC=S1ng0sLRt0vhB2Rpk_vetQLu9Kro+JREWf-wpkkO6dNKiwg@mail.gmail.com>
Message-ID: <CAC=S1ng0sLRt0vhB2Rpk_vetQLu9Kro+JREWf-wpkkO6dNKiwg@mail.gmail.com>
Subject: Re: [PATCH v5 00/14] Add display driver for MT8188 VDOSYS1
To:     Hsiao Chien Sung <shawn.sung@mediatek.com>
Cc:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com,
        Singo Chang <singo.chang@mediatek.com>,
        Nancy Lin <nancy.lin@mediatek.com>,
        Jason-JH Lin <jason-jh.lin@mediatek.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Hsiao-Chien,

On Tue, Jun 27, 2023 at 2:50=E2=80=AFPM Hsiao Chien Sung
<shawn.sung@mediatek.com> wrote:
>
> Support MT8188 VDOSYS1 in display driver.

I'm testing this series with my local MT8188 setup + an external 4K
display, and I feel there is something missing in it.
With these patches the external display can be lit up on my end, but I
only see glitches and no meaningful content is rendered.
Could you check again and send the updated series with the fix?

Thanks,
Fei
