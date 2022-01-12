Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3A37F48CBD3
	for <lists+devicetree@lfdr.de>; Wed, 12 Jan 2022 20:26:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344599AbiALTZ7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Jan 2022 14:25:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60122 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344262AbiALTZz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Jan 2022 14:25:55 -0500
Received: from mail-qt1-x829.google.com (mail-qt1-x829.google.com [IPv6:2607:f8b0:4864:20::829])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9A820C06173F
        for <devicetree@vger.kernel.org>; Wed, 12 Jan 2022 11:25:55 -0800 (PST)
Received: by mail-qt1-x829.google.com with SMTP id bp39so4198864qtb.6
        for <devicetree@vger.kernel.org>; Wed, 12 Jan 2022 11:25:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=oqb3porLNx+xL8LPszd6cBs+HKnYfYssZ8m+DqN9VEA=;
        b=JblWP2i4DLSV2FyMNw36nU485keGSlI6pKsZ/cvydLVu6L3v0/mVIV+DFzlwPb5zqC
         6HLM7hm1YzH1Bm7u5uyEHrtXlt5U/fWRwORt7j5BvzgJCFinC4s6CWBXrE1tP2avSuYZ
         IWhxIPyAx8uAN+UB91LIGGdJXalmzTlHGbYdqqBhTeTLmfFuvbICHwUxpeIts2ilbLfw
         06/ABRLD/vLSsH1ewNN3zca9VKlBgkyEEWQz1M0vJ4W9qfu6+AKuqBKqej59yUksH5IT
         eMsYR86MqkHfuoX+UVtue+m28tXOamjsgWZJaWSF7Y7ke8I9FXDbih/bPJxLkDkdBZC0
         gK9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=oqb3porLNx+xL8LPszd6cBs+HKnYfYssZ8m+DqN9VEA=;
        b=L1kSWXLTXnxJbu/Yn03IkHnGm9HZrwO1Xthdjj7qIhaR1xv+K3cRVdDqaV95VSuP57
         ohY4PRkPE9wCMh/et3HbCP5BvjfpgEczCwD47qbtjLgI5Exqf6HqdJMCtqCu4T259acf
         uIKV+SfwoDwh35NAhKyHFsKFogd1Gf4liwxPnQpVcdMgI9TKgjYn8eyitM5AYy/omixK
         T7eQWT3SXmI+50dbBjK6SRuOusoGeHqIT4kB98aZg1GkE0QQClLoQZH1Q5QHUXBF2e9Y
         3b9zpJG1qbq1zwB4zZIp95BannCX1oR3ril6v7yy8NJhAJBTzTsI+yVgxH7F6ILUAVjP
         WBIg==
X-Gm-Message-State: AOAM5317bzEFbjPfUPqHfglBVONHIkaCrWmlVyCyimP7dgYc41OPeedS
        SKsI08m3Z5FiIEcGeoolUl2I+9lQhtkRu2a75ney5g==
X-Google-Smtp-Source: ABdhPJyY1HDRNDcRGH2Y8HwDgStmoOsQvc5QbGqYHkwVCXfhTw8Oky+Gr6lvVhzr2CXUzxeJWT5FMQtyKlZBVm29bSw=
X-Received: by 2002:ac8:584a:: with SMTP id h10mr866476qth.615.1642015554496;
 Wed, 12 Jan 2022 11:25:54 -0800 (PST)
MIME-Version: 1.0
References: <20220112113247.29135-1-allen-kh.cheng@mediatek.com> <20220112113247.29135-2-allen-kh.cheng@mediatek.com>
In-Reply-To: <20220112113247.29135-2-allen-kh.cheng@mediatek.com>
From:   Curtis Malainey <cujomalainey@google.com>
Date:   Wed, 12 Jan 2022 11:25:42 -0800
Message-ID: <CAOReqxga6hLXs4P2hD1k_X01AWesQBae5AhJTLtiK_3Ndex_Sw@mail.gmail.com>
Subject: Re: [PATCH v2 1/1] firmware: mediatek: add adsp ipc protocol interface
To:     "allen-kh.cheng" <allen-kh.cheng@mediatek.com>
Cc:     Matthias Brugger <matthias.bgg@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Linux-ALSA <alsa-devel@alsa-project.org>,
        Tzung-Bi Shih <tzungbi@google.com>,
        Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Ranjani Sridharan <ranjani.sridharan@linux.intel.com>,
        Kai Vehmanen <kai.vehmanen@linux.intel.com>,
        Daniel Baluta <daniel.baluta@nxp.com>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>,
        Project_Global_Chrome_Upstream_Group@mediatek.com,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        sound-open-firmware@alsa-project.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jan 12, 2022 at 3:43 AM allen-kh.cheng
<allen-kh.cheng@mediatek.com> wrote:
>
> From: Allen-KH Cheng <Allen-KH.Cheng@mediatek.com>
>
> Some of mediatek processors contain
> the Tensilica HiFix DSP for audio processing.
>
> The communication between Host CPU and DSP firmware is
> taking place using a shared memory area for message passing.
>
> ADSP IPC protocol offers (send/recv) interfaces using
> mediatek-mailbox APIs.
>
> We use two mbox channels to implement a request-reply protocol.
>
> Reviewed-by: Tzung-Bi Shih <tzungbi@google.com>
> Signed-off-by: Allen-KH Cheng <Allen-KH.Cheng@mediatek.com>

Reviewed-by: Curtis Malainey <cujomalainey@chromium.org>
