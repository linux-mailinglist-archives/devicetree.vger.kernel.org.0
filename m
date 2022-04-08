Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 24ED24F9EF3
	for <lists+devicetree@lfdr.de>; Fri,  8 Apr 2022 23:12:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234564AbiDHVNe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Apr 2022 17:13:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60086 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237610AbiDHVNd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Apr 2022 17:13:33 -0400
Received: from mail-pg1-x536.google.com (mail-pg1-x536.google.com [IPv6:2607:f8b0:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2E3361877CE
        for <devicetree@vger.kernel.org>; Fri,  8 Apr 2022 14:11:29 -0700 (PDT)
Received: by mail-pg1-x536.google.com with SMTP id 66so8764639pga.12
        for <devicetree@vger.kernel.org>; Fri, 08 Apr 2022 14:11:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=yJoHVgCYASD8LnGD6yxNNYWY7QMbfJ8fAJgs8FOfIBo=;
        b=PPblHVCYNoTcYVGEDB9f3y8lb6kGlK/DpqflWVJ48wuqmbEKlX2Am4/NlbakXY8uK+
         yyv8n3dHilgLjLb/sdCT3X4JJW7BI9ZFFJUfwjVLdZozHe+ZlbNR+pgWNf1nmzPQ0iDM
         euXaJWoaJfy7oqug4JTuNadUjl3uBhsQwIlkwp9tRv71F9NHh5qbOn8ecKngNrh4k/cP
         8osiIySWZ7z/RFLqEFdUQxS5j9ehgEoZEOiViRACJUDNZWaMZB2/1E/EXGHLValnxRtb
         j9nA+i/kOfJTxme/3eo7B+pinZ0T5nwBfOD6ubx2YL4L0qZaTRlh7McDg+y50L5+d4ea
         jQJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=yJoHVgCYASD8LnGD6yxNNYWY7QMbfJ8fAJgs8FOfIBo=;
        b=S2Z+qNP4T1CyzOlqDpB0C0V3r8iU7TTG9KS+kobajAQ/LedzeQ6cEJpJolfJteAPMi
         oIWQdik4UWmEJvyCpqYZs7q2wc1Dv8XILCfppjDJ0nbSmoak1SUnEPCG9f3U246iVEH6
         wekCFN74RPjy3Otzzsx+KR5dn1Tfeyk7cAc1mORKaUAGFJmXlVNH8r2ccG62GX+pohRH
         yvcdR/2F4ZB3/iOr+x8ceWfOD1mGIQxhS8BIRHnTBsCOEXbp0IU1VBNpykq7n3IXgk+1
         pLokkqEHI12YNzRlcnKAncqLTP9C8CEOwKRVQI/GT7KfHHmbf/g5TnY8kF+9gIPQRWad
         bCEw==
X-Gm-Message-State: AOAM530/GShOx4uPJkulkRAGQUONmpPgO7jHVF1Ugts0SobO9duvnUhR
        JeBL9jHbuuJMmri1CeksnPKrtQ==
X-Google-Smtp-Source: ABdhPJwz6J42A+7QBRIWB9Mr2szuhxRCqq/9FHbuGOK9KLJKIYDpU9wSFNCxsthrDdcpshIsu1yBbA==
X-Received: by 2002:a05:6a00:1152:b0:4be:ab79:fcfa with SMTP id b18-20020a056a00115200b004beab79fcfamr21713713pfm.3.1649452288648;
        Fri, 08 Apr 2022 14:11:28 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net. [71.197.186.152])
        by smtp.gmail.com with ESMTPSA id l18-20020a056a00141200b004f75395b2cesm26668230pfu.150.2022.04.08.14.11.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Apr 2022 14:11:28 -0700 (PDT)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Rex-BC Chen <rex-bc.chen@mediatek.com>, rafael@kernel.org,
        viresh.kumar@linaro.org, robh+dt@kernel.org, krzk+dt@kernel.org
Cc:     matthias.bgg@gmail.com, jia-wei.chang@mediatek.com,
        roger.lu@mediatek.com, hsinyi@google.com, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com,
        Rex-BC Chen <rex-bc.chen@mediatek.com>
Subject: Re: [PATCH V2 00/15] cpufreq: mediatek: Cleanup and support MT8183
 and MT8186
In-Reply-To: <20220408045908.21671-1-rex-bc.chen@mediatek.com>
References: <20220408045908.21671-1-rex-bc.chen@mediatek.com>
Date:   Fri, 08 Apr 2022 14:11:27 -0700
Message-ID: <7h5ynj5lhc.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Rex-BC Chen <rex-bc.chen@mediatek.com> writes:

> Cpufreq is a DVFS driver used for power saving to scale the clock frequency
> and supply the voltage for CPUs. This series do some cleanup for MediaTek
> cpufreq drivers and add support for MediaTek SVS[2] and MediaTek CCI
> devfreq[3] which are supported in MT8183 and MT8186.

There's no upstream DT for MT8186 and there are no OPPs defined in the
upstream DT for MT8183.

In order to test this on mainline, could you provide a patch for MT8183
that adds OPPs to the DT so this can be tested with mainline?

Thanks,

Kevin
