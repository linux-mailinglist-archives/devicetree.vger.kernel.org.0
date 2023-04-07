Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9AB316DAEEB
	for <lists+devicetree@lfdr.de>; Fri,  7 Apr 2023 16:43:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231542AbjDGOnr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Apr 2023 10:43:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54610 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230245AbjDGOnq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 Apr 2023 10:43:46 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF1ABE53
        for <devicetree@vger.kernel.org>; Fri,  7 Apr 2023 07:43:44 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id v1so42485770wrv.1
        for <devicetree@vger.kernel.org>; Fri, 07 Apr 2023 07:43:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680878623; x=1683470623;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4y2vTh12wvHzVyTsbfEPBX95l9liSSCPzdmz8EpwIAM=;
        b=eSTzTJ++Yr5AonzNMm+PKZMNKh16H4wNG7Ja5V0Ey6dXViJfAmNx0uYvLC8A02nU0V
         IAgy2aaJbf1xHJcAiUwH2CQro/YQ63kjjrtHy99bXymQpSsTnIx85+HBj/vp9SK+eupn
         AfYunddRcSirOyouplefXDaeIFs5B24J25LmnVp0KaNdMNxjj+qAxxkn5jF/MPcC12w2
         cwnQC2Kfl3Xfo31oBRuk63pDPyDKSKZvRNREKeI60k2+T7hfm5W8xnOx3K9GRCVzT3Sh
         H06QWq3pPtYiWZp1gtZGCAOPw98w6xhV6v6Gyp489I+1TxKEUUKrQvH47I80XipQQHLU
         fhDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680878623; x=1683470623;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4y2vTh12wvHzVyTsbfEPBX95l9liSSCPzdmz8EpwIAM=;
        b=By8lDaI9XkuvcF1QFBo+RxHgggn7bVITVJL0Gvzsz7f4k0ntEtB82CWfEYH6D4CKIn
         AQK58WsIEG4ksKq7a+8qnP1t17ch/1/bVibvoGkzmWC8MNRtS7+kTSpCULeZYcLVArpC
         /ORKIQezH8zegRU6KkTmuzfZLtJ+HKLTHXJkysRcafOeXjhXcSxuTbS7lVH3cHr2dTqf
         UT7ngiSmht62RzPoQIbjq92ppPHQx/qzK2r+eqfV2SoA43ealAYoTmOfebRuQIMC0RsV
         9SGNIPe4NltMndJqL8SbDsOCQXwLuY592UhWJ818FbadJG3hGzkgSoRPGSLFgWU0l3fT
         32xA==
X-Gm-Message-State: AAQBX9fnYqb7UQRSiMeypzT58fTUoalSKxashS09MerFlOxj+L76dupJ
        0s13zlw4uyyv99HCUeLflPTKgg==
X-Google-Smtp-Source: AKy350YbOhKCjXDaonDjuR5CDVgiwS6hEPL+WFj/oy38rfc3QnZkRYr/w/jNMogzEGRVQ7B2fLHzHA==
X-Received: by 2002:a5d:508a:0:b0:2ef:afd5:5e0f with SMTP id a10-20020a5d508a000000b002efafd55e0fmr1332009wrt.56.1680878623397;
        Fri, 07 Apr 2023 07:43:43 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id y10-20020adfdf0a000000b002efb121b75fsm1678082wrl.58.2023.04.07.07.43.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Apr 2023 07:43:43 -0700 (PDT)
From:   Neil Armstrong <neil.armstrong@linaro.org>
To:     linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Kelvin Zhang <kelvin.zhang@amlogic.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>
In-Reply-To: <20230407102704.1055152-1-kelvin.zhang@amlogic.com>
References: <20230407102704.1055152-1-kelvin.zhang@amlogic.com>
Subject: Re: [PATCH] dt-bindings: arm: amlogic: add C3 bindings
Message-Id: <168087862262.952906.1621259082439192676.b4-ty@linaro.org>
Date:   Fri, 07 Apr 2023 16:43:42 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.1
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Fri, 07 Apr 2023 18:27:04 +0800, Kelvin Zhang wrote:
> Document the new C3 SoC/board device tree bindings.
> 
> C3 is an advanced edge AI processor designed for smart IP camera
> applications, which does not belong to Meson series.
> 
> Therefore, modify the title field accordingly.
> 
> [...]

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.5/arm64-dt)

[1/1] dt-bindings: arm: amlogic: add C3 bindings
      https://git.kernel.org/amlogic/c/b2255e4195ea509b51c33b7a182e764c37901129

These changes has been applied on the intermediate git tree [1].

The v6.5/arm64-dt branch will then be sent via a formal Pull Request to the Linux SoC maintainers
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

