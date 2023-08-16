Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3396777E70C
	for <lists+devicetree@lfdr.de>; Wed, 16 Aug 2023 18:57:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1343495AbjHPQ4p (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Aug 2023 12:56:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54910 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344995AbjHPQ4U (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Aug 2023 12:56:20 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A4482E4C
        for <devicetree@vger.kernel.org>; Wed, 16 Aug 2023 09:56:19 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-3fe4cdb724cso63513285e9.1
        for <devicetree@vger.kernel.org>; Wed, 16 Aug 2023 09:56:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692204978; x=1692809778;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YJ/7Ue64ruuo8T+szNkGJZsk2gUYlOBeVjiXucVPa+Q=;
        b=VMTtyyFLbaM8ukHAPJMeiQFvUX98mL+upTHrbM2TGki1GaW8qNRkiEvW6Mz6tM4x16
         KNGQzUCE+1lW9g3rI45gGogF8Jz87QpuIqQt5NT1jFrQtkifHhfC1v5Cg+E6URHXRDuI
         6Pl1JJRtBTKvL3+JeVrUPAMN7sdCxFzkty/eu6L6ouZL1UZzTEaLdrkERPQjPsafFs/L
         /7TKs/0gz8pqc963c9uCF07LluiafM68H8Elie42pa+gSt0siq/p89ATD0I1X4sZbPM7
         h56uUpoLbJd0dK0K4RvGxA2K/Ret12VRy9KY96d2GLg+/qVzE+sn22x42VgqOaWfSFZy
         7khg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692204978; x=1692809778;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YJ/7Ue64ruuo8T+szNkGJZsk2gUYlOBeVjiXucVPa+Q=;
        b=MaihUyECXBLwdK8ayrCXhvtH6x98unrXK1G3K5sIjyzJDvNiBOzHxWgU9G1x8e8Yfs
         YwNV5w5In/Fho9gI20A8HjDBAsYx2xsijvbThYESJEzTIuGzX01iTg+hjt6aEYQtcKjG
         +8LR2oROSa1DbPaIXR4HQO4kKb0mgKcOBHEec/tp3YFOSl0ub6SgQjRT6p076CAEaQGf
         gGcLCIjXTLFVzc84mV+1Vt8669xL8qk97mh72p9LCpZ0LpwFBj/ItAl0MrcMViYZsQt0
         GNuz7npTmeJGcPIJ09z6BbT8hHz6UQfdCikWzhERBnvAuu6N/FqFwPfgpGeKpd++DqD5
         CvOQ==
X-Gm-Message-State: AOJu0Yxjj+BKfqqvvnERgZfMTmdN36UP+jUcvG9PviEl9G5eDA4tjXBc
        x94Sykg/QeuNG5KWT+jDg69F4Q==
X-Google-Smtp-Source: AGHT+IGRD2GPdHF+WwbQeFKbhUDof/P08J1k3Vva93Q9LEWKai3kN+RBUYPs+ZycDdnTV78cytNS8g==
X-Received: by 2002:a1c:4b08:0:b0:3fb:e206:ca5f with SMTP id y8-20020a1c4b08000000b003fbe206ca5fmr1891670wma.31.1692204978103;
        Wed, 16 Aug 2023 09:56:18 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id k7-20020adfe3c7000000b003176c6e87b1sm21935525wrm.81.2023.08.16.09.56.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Aug 2023 09:56:17 -0700 (PDT)
From:   Neil Armstrong <neil.armstrong@linaro.org>
To:     sam@ravnborg.org, airlied@gmail.com, daniel@ffwll.ch,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, thierry.reding@gmail.com,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-tegra@vger.kernel.org,
        Diogo Ivo <diogo.ivo@tecnico.ulisboa.pt>
In-Reply-To: <20230807133307.27456-1-diogo.ivo@tecnico.ulisboa.pt>
References: <20230807133307.27456-1-diogo.ivo@tecnico.ulisboa.pt>
Subject: Re: (subset) [PATCH v3 0/5] Add JDI LPM102A188A display panel
 support
Message-Id: <169220497726.2977065.3236775969816366659.b4-ty@linaro.org>
Date:   Wed, 16 Aug 2023 18:56:17 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Mon, 07 Aug 2023 14:33:00 +0100, Diogo Ivo wrote:
> These patches add support for the JDI LPM102A188A display panel,
> found in the Google Pixel C.
> 
> Patch 1 adds the DT bindings for the panel.
> 
> Patch 2 adds the panel driver, which is based on the downstream
> kernel driver published by Google and developed by Sean Paul.
> 
> [...]

Thanks, Applied to https://anongit.freedesktop.org/git/drm/drm-misc.git (drm-misc-next)

[1/5] dt-bindings: display: Add bindings for JDI LPM102A188A
      https://cgit.freedesktop.org/drm/drm-misc/commit/?id=a913a739ab6e6ef10c0c47cb85dd4a105b3d9df7
[2/5] drm/panel: Add driver for JDI LPM102A188A
      https://cgit.freedesktop.org/drm/drm-misc/commit/?id=25205087df1ffe06ccea9302944ed1f77dc68c6f

-- 
Neil

