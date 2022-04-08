Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E33DC4F9EE5
	for <lists+devicetree@lfdr.de>; Fri,  8 Apr 2022 23:10:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239633AbiDHVKo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Apr 2022 17:10:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48690 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234428AbiDHVKn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Apr 2022 17:10:43 -0400
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com [IPv6:2607:f8b0:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9F934149D19
        for <devicetree@vger.kernel.org>; Fri,  8 Apr 2022 14:08:37 -0700 (PDT)
Received: by mail-pf1-x42e.google.com with SMTP id p25so2711635pfn.13
        for <devicetree@vger.kernel.org>; Fri, 08 Apr 2022 14:08:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=HoLWT/EythxVH1YT+vEjLN2TXDPwfF5xPPqMajsg97o=;
        b=6DqRW4gK+PKLqJfJdAd0TGTO95Ya7KDB3mBZJjKMlL0nxZLtgxfpl+75BDL9PpUtD/
         D8sxCCmecY9A1jNHsGn59jfaYAYVcw0MXiJZsMdhW9Hgaj2eegEWYZqhsHZZ8RViFFh8
         g/mUJ5pRz/mDzFZbqiAMFiy2sA1QwSdm7uJ+N0EWGsnS9ZjEVfmjTnqFmuhMnW10Edv7
         uODRBJwh1af7cUiTZDMOJnhCYENwjfab4lz7/KYYJOcswfmpJxqrQ5/bp0tB9mIV7ZMt
         Kceie9MXCbkN4vkioRj3xK49n2u3J7v+iyzNlDM+Hsx6W8Dz7u6YcGhollnP1Te9u94x
         iUtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=HoLWT/EythxVH1YT+vEjLN2TXDPwfF5xPPqMajsg97o=;
        b=kuUG1RGk9CZFPcdlrDxE62atyQqsZz2W3Gunz0ZdBzHyN1wLaKLLG6HXvHQhlclmf1
         JsTdLu0HAo+SGKklGcOKVDO72D27U5IE7HrdN0x3a/vGsouxeM3WYyb5EOMN5lz5i2Pa
         aL2Lfe8IUz+46Gwh13kHYaQhptksb0Zaf2dfRYs7M+9LLwZkDyDslcloJwa3uOLMyQMw
         zagzRNkncKv9NiD2sLqQgggXOOHsHn1W3CN0zmtdmTpayWvEpxniWLt2cVBawJgE/j7i
         nWbfiLRhftgeWMHwxo/V1CW+1LFCC2AAmAV2tSLuQG/ytKm1OEfVjDJ0pxxExE1bvT1o
         6/WQ==
X-Gm-Message-State: AOAM531L1oY4yvecBIexHQeqApS8jJswQySPpNvvzy0+FYaN7Ykd1PkS
        ZMo0H704b00sw771wCPWG4ZIuQ==
X-Google-Smtp-Source: ABdhPJyvhkTmr6m8xOSTjNCBilnTlNxx+TZTy+ro007JGG5u+GpijdOFdlxjLZjwIoz7WZTYTZhnOg==
X-Received: by 2002:a63:c015:0:b0:385:fe06:eb86 with SMTP id h21-20020a63c015000000b00385fe06eb86mr16908387pgg.132.1649452117075;
        Fri, 08 Apr 2022 14:08:37 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net. [71.197.186.152])
        by smtp.gmail.com with ESMTPSA id s10-20020a63924a000000b00399571b2f99sm12120792pgn.57.2022.04.08.14.08.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Apr 2022 14:08:36 -0700 (PDT)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Rex-BC Chen <rex-bc.chen@mediatek.com>, rafael@kernel.org,
        viresh.kumar@linaro.org, robh+dt@kernel.org, krzk+dt@kernel.org
Cc:     matthias.bgg@gmail.com, jia-wei.chang@mediatek.com,
        roger.lu@mediatek.com, hsinyi@google.com, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com
Subject: Re: [PATCH V2 11/15] cpufreq: mediatek: Update logic of
 voltage_tracking()
In-Reply-To: <20220408045908.21671-12-rex-bc.chen@mediatek.com>
References: <20220408045908.21671-1-rex-bc.chen@mediatek.com>
 <20220408045908.21671-12-rex-bc.chen@mediatek.com>
Date:   Fri, 08 Apr 2022 14:08:36 -0700
Message-ID: <7hczhr5lm3.fsf@baylibre.com>
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

> From: Jia-Wei Chang <jia-wei.chang@mediatek.com>
>
> - Remove VOLT_TOL because CCI may share the same sram and vproc
>   regulators with CPU. Therefore, set the max voltage in
>   regulator_set_voltage() to the proc{sram}_max_volt.

This could you a bit more detailed explanation.  Why does VOLT_TOL get
in the way when regulators are shared between CPU & CCI?

> - Move comparison of new and old voltages to
>   mtk_cpufreq_voltage_tracking().

Why?  And how is this related to the above change?  Seems to me that it
belongs in a separate patch.

Kevin
