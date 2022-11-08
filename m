Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1968E621060
	for <lists+devicetree@lfdr.de>; Tue,  8 Nov 2022 13:23:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234103AbiKHMXe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Nov 2022 07:23:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43452 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233825AbiKHMXd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Nov 2022 07:23:33 -0500
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 39F1C12ABF
        for <devicetree@vger.kernel.org>; Tue,  8 Nov 2022 04:23:32 -0800 (PST)
Received: by mail-ej1-x62e.google.com with SMTP id q9so38257662ejd.0
        for <devicetree@vger.kernel.org>; Tue, 08 Nov 2022 04:23:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=luG0mZqT42s4ScqDpuvA+QkBwlM0zBwaqn4Z6IkWsZs=;
        b=Xo5p4+/dUqGyH5ORFbKrP+oJCQSQZB2ct6cj9l+ZnpTHECjKZE3OYxIXu59IrSc1Qc
         nX/Uwl5d/LXVdtHWsbictVgjLJXjo6Z2VFcV12W3es7PHiCPt0ByVeiUb52qE4sZ+R6J
         M4g06BObqOsWQdjKRSJgJbGxBWKl1UxTSLpW+M0o6UylEofMwGIkMQwGLQRyoCqTQCDW
         9v8p3f/niQpiMs3IfG007/5NdmqFN4TXIrkHYGVLXYFcI5DrApq4k59Hdd64Ou5IAMvq
         /Io29eYqa4UiQwlbhsoVxuAvrAcKYxdDybe9320eNpkUuE+TapewW0K/bzYgVJnvFE8j
         mSdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=luG0mZqT42s4ScqDpuvA+QkBwlM0zBwaqn4Z6IkWsZs=;
        b=qvDL9bH1fcZmmoqjzUtwsjuI4AO8tuzDJjkzEo5VOFdHK584LzoMj8wYUNRbQRj+St
         CMzajzniOUVvy2H2DBlIFOZEfcUJe0GUbDHS5oxhTT2NHpS5PFV3VtU5ne2Yf0lkkkOu
         Xg9/YVDnQhddfg1i8gWxokH5IVl1pLPhbn8Jxp6UpqCh2GbAlKNfB2cCEy2WFdWtw/oa
         oTQ71GagNZZ+klNJD/AQlyQb82jgcCg3aGWCadV+ICoPLxsQ+tC/mRSegBAZMpbe8iYy
         R7jwTSokZ6I127kebNEMWI3ptcl74a9zn9l1hZt8VzSDBESfeQ9LhmuE15kazp7gXmVq
         TUrg==
X-Gm-Message-State: ACrzQf1VFiV+BcqCGhMWjhPM/lE+xjw71Jt0KSV2sm5FI3rikkVEA5EY
        P25+17jvwaENGLuS40LnafskmTjl2pDm1senf5ZDxg==
X-Google-Smtp-Source: AMsMyM7jqo3lgKIdTCyv/JBJ/W0wENabsLDVFGDmYAZKK61Yj7hYAsmkI+a+tjUCNWOJv5Ff4m1Sdtecqie2DFAhPwg=
X-Received: by 2002:a17:906:4c4b:b0:7ad:a197:b58e with SMTP id
 d11-20020a1709064c4b00b007ada197b58emr53785934ejw.203.1667910210848; Tue, 08
 Nov 2022 04:23:30 -0800 (PST)
MIME-Version: 1.0
References: <20221028153505.23741-1-y.oudjana@protonmail.com> <20221028153505.23741-7-y.oudjana@protonmail.com>
In-Reply-To: <20221028153505.23741-7-y.oudjana@protonmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 8 Nov 2022 13:23:18 +0100
Message-ID: <CACRpkdaWFe87x0NDb5PqZo1PDDG1W9Q4do2o=e4T=Jz+ksGPfA@mail.gmail.com>
Subject: Re: [PATCH v4 06/13] dt-bindings: pinctrl: mediatek,pinctrl-mt6795:
 Improve interrupts description
To:     Yassine Oudjana <yassine.oudjana@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Sean Wang <sean.wang@kernel.org>,
        Andy Teng <andy.teng@mediatek.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Yassine Oudjana <y.oudjana@protonmail.com>,
        linux-mediatek@lists.infradead.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Oct 28, 2022 at 5:35 PM Yassine Oudjana
<yassine.oudjana@gmail.com> wrote:

> From: Yassine Oudjana <y.oudjana@protonmail.com>
>
> Clarify the meaning of sysirq to avoid confusion.
>
> Suggested-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> Signed-off-by: Yassine Oudjana <y.oudjana@protonmail.com>

Patch applied.

Yours,
Linus Walleij
