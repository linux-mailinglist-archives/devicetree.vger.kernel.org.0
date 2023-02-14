Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C38F769672F
	for <lists+devicetree@lfdr.de>; Tue, 14 Feb 2023 15:43:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233430AbjBNOnS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Feb 2023 09:43:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39582 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232822AbjBNOnR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Feb 2023 09:43:17 -0500
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 681C116326
        for <devicetree@vger.kernel.org>; Tue, 14 Feb 2023 06:43:15 -0800 (PST)
Received: by mail-ej1-x62f.google.com with SMTP id k16so9114005ejv.10
        for <devicetree@vger.kernel.org>; Tue, 14 Feb 2023 06:43:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=xrQFXlyYQ6BXMoPDycsGZ57c4QKFYnwrzSnOP2uhY5c=;
        b=AlAbePd1Q3NeUZeR2Fa4w5Tmj4lwGN2RYVp1sWM1JcuteH4S4aia6L6QcVA/zPZHsT
         HUS3yNyPJXYnbv+NeFtGYj16tN1gj/RjA2mrgoEWM+Tvba+fpl+r2SXDxgxa4ufDV1Nm
         k1KyX2CkLJDqPsXtDFta117qhcdJFmoKDznYQcMbE4usvHZ2F8PQZDDwq936sE1AiivT
         UEFYHNyFpMNOoPgBHr74B09zYdfZo44MCPmcBli6jekwlidoc0Q3TOGlnHx/p5bwtuSU
         uMBUhIVhvLKF7A+ozHGqjnoBEywHcWk+8x5UVpFajK6ClMtYyraSEugTIkoiiIX+gkVa
         bzrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xrQFXlyYQ6BXMoPDycsGZ57c4QKFYnwrzSnOP2uhY5c=;
        b=JzjofHe2G9s5vp9MGsp8lc8EQF++6zeOAEX+h1M4DkdgSdMVhDnxw1lSDiaCklLbjt
         TZdam1N3RDKCSol+x+5NUqdkEThX3XxrvU5lVx+myJBaVnEtIDzYB1dY8PgzsEDMLAjS
         tv8ocOizuGenPi2YY0bzCAEcsHVSG2SEBnOGwAeIHRTDrv+RveoGX9SrWVQZHfpqaxM/
         JgImiWpsmKbFn55YxHkwzu+1o/OtVYCS90VFTLiacQJ2E4UwDiRL5kpD4P3YY+C9MK7g
         R1huwCwApt9Jl6miOt8qG0GNAReqvsOrYdXcvljvGDHqpkzaImEkRDrA+DyFaMvH+nD7
         E22Q==
X-Gm-Message-State: AO0yUKUbF/wYYHukyYB7Lpb1Vz2t3Fzz7hRQwqX6M7q/2HRiXKxPP+gN
        8sQvBmYPV7IUO2qvBg+EHUQmelJBW8z/oSSPXY33Ow==
X-Google-Smtp-Source: AK7set/eRZRwT84Ah6k0jwJ445lJrD4natFzZ1kVHXpD+dAT/lHnlzbyOxVzjwyjHZ518E8n33MZrsg1UFD9/40unP0=
X-Received: by 2002:a17:906:14cf:b0:8aa:841e:ae71 with SMTP id
 y15-20020a17090614cf00b008aa841eae71mr1387871ejc.13.1676385793939; Tue, 14
 Feb 2023 06:43:13 -0800 (PST)
MIME-Version: 1.0
References: <20230209105628.50294-1-bchihi@baylibre.com> <20230209105628.50294-6-bchihi@baylibre.com>
In-Reply-To: <20230209105628.50294-6-bchihi@baylibre.com>
From:   Balsam CHIHI <bchihi@baylibre.com>
Date:   Tue, 14 Feb 2023 15:42:38 +0100
Message-ID: <CAGuA+oqD8qDVw=50dC=Qdi8f1-4YqtN7wKtV-msx3=a_Jb24aA@mail.gmail.com>
Subject: Re: [PATCH v14 5/6] arm64: dts: mediatek: mt8195: Add thermal zones
 and thermal nodes
To:     daniel.lezcano@linaro.org, angelogioacchino.delregno@collabora.com,
        rafael@kernel.org, amitk@kernel.org, rui.zhang@intel.com,
        matthias.bgg@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, rdunlap@infradead.org,
        ye.xingchen@zte.com.cn, p.zabel@pengutronix.de
Cc:     linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        khilman@baylibre.com, james.lo@mediatek.com,
        rex-bc.chen@mediatek.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Matthias, Angelo,

Would you please confirm if this patch can be applied?
and, if it is the case, to which tree it will be applied?

Best regards,
Balsam
