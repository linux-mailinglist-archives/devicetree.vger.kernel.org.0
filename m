Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 97701769237
	for <lists+devicetree@lfdr.de>; Mon, 31 Jul 2023 11:48:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231134AbjGaJsO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jul 2023 05:48:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59852 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232040AbjGaJrt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Jul 2023 05:47:49 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0E270173F
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 02:47:04 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-3177163aa97so4562927f8f.0
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 02:47:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690796822; x=1691401622;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YxDsWVGn8/NwuT4OxCGgs3WFSadNfLfmBL1C6HxSVLg=;
        b=jP8t+EmdY/W4O3SmujOD845Q+ns9HxWJCNeYGg0MI3+yjrJK+5A3PYQ+0hTBw/kKuP
         6+je4MniZC0iq4binVCA6cfnBZ5+Odauwh1Z8UkXpqBUKDgouhXgBMK4ORM5egpPTLMP
         6wp8Uv8EduZXsZM3yR+yOGFh4T3NosJHzS8ZJORXddie58lS92dD0KUCEzzo+ZBOacuq
         FaCIU7G+GRR8BU9u2bMbzm5o6qstrsNPJKyICOQPCSX8DeeOdqRAbAeWaIjT1/XQod2y
         rrmlnfKb0kmsRwzbIONoeq02MaSfkac6ogTJBXZYw5Wp8XS1THsJqIRwM3IWb9LL0qiK
         u6XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690796822; x=1691401622;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YxDsWVGn8/NwuT4OxCGgs3WFSadNfLfmBL1C6HxSVLg=;
        b=acqwwHKSbno1TESoTnH+OMdi2UcrYwgJZVOTSYgoLOz41Sdg4TRkI3ExvxTc5DK8es
         E/QpglruwvFPRlLERlzh+N388NuzD855DAb8fYtdZnUry2niVwsD+RyfUjpFVW0h9qFn
         lO9FgZRkMzhMKrRL+7yJ5frB9l+/XsdRcqcs71YHWw+kze8tNV676K0MtKt3g4uFO3LC
         fSdFmKo5cZifjdK44y9RUuYw0LVitTIyjfAq8dMy1L11UwVaSZFObGRLvqHkY6Zdprgk
         y4sHHjSGmkIYJK+1/Hoj+nm8z+cq7Wy/QTPFn5K7YrT4TUY71YHgzIcOFZKuasOl1GTP
         gEFA==
X-Gm-Message-State: ABy/qLaIfN7WEe1odF0P8XWdqwlytDpryj+G3C/mKV7tX0pxG30KjRhD
        zqtKFj4ieXQhfL7/dFgyOrxCVA==
X-Google-Smtp-Source: APBJJlFuGlL1NmqvGsLXjELI7YezZ6XW63R0SDXpX2GfbbX/iyB7Bw3CNl7zqXYoOtUVkfT80ZwTgA==
X-Received: by 2002:adf:f7d1:0:b0:317:61d8:3c7e with SMTP id a17-20020adff7d1000000b0031761d83c7emr8833827wrq.26.1690796822234;
        Mon, 31 Jul 2023 02:47:02 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id p9-20020a5d48c9000000b0031433443265sm12556878wrs.53.2023.07.31.02.47.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 02:47:01 -0700 (PDT)
From:   Neil Armstrong <neil.armstrong@linaro.org>
To:     khilman@baylibre.com, jbrunet@baylibre.com,
        martin.blumenstingl@googlemail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        Huqiang Qin <huqiang.qin@amlogic.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
In-Reply-To: <20230720114639.833436-1-huqiang.qin@amlogic.com>
References: <20230720114639.833436-1-huqiang.qin@amlogic.com>
Subject: Re: [PATCH V2] arm64: dts: Add gpio_intc node and pinctrl node for
 Amlogic C3 SoCs
Message-Id: <169079682106.186625.3975138620226263746.b4-ty@linaro.org>
Date:   Mon, 31 Jul 2023 11:47:01 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Thu, 20 Jul 2023 19:46:39 +0800, Huqiang Qin wrote:
> Add gpio interrupt controller device and pinctrl device.
> 
> 

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.6/arm64-dt)

[1/1] arm64: dts: Add gpio_intc node and pinctrl node for Amlogic C3 SoCs
      https://git.kernel.org/amlogic/c/cac34b2b3f5a9d4471a2660ec52599b6015bfc51

These changes has been applied on the intermediate git tree [1].

The v6.6/arm64-dt branch will then be sent via a formal Pull Request to the Linux SoC maintainers
for inclusion in their intermediate git branches in order to be sent to Linus during
the next merge window, or sooner if it's a set of fixes.

In the cases of fixes, those will be merged in the current release candidate
kernel and as soon they appear on the Linux master branch they will be
backported to the previous Stable and Long-Stable kernels [2].

The intermediate git branches are merged daily in the linux-next tree [3],
people are encouraged testing these pre-release kernels and report issues on the
relevant mailing-lists.

If problems are discovered on those changes, please submit a signed-off-by revert
patch followed by a corrective changeset.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git
[2] https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git
[3] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git

-- 
Neil

