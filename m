Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 870FD785AD3
	for <lists+devicetree@lfdr.de>; Wed, 23 Aug 2023 16:36:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236287AbjHWOgi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Aug 2023 10:36:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44364 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236551AbjHWOgh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Aug 2023 10:36:37 -0400
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7A2A0E73
        for <devicetree@vger.kernel.org>; Wed, 23 Aug 2023 07:36:34 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-5007abb15e9so5828995e87.0
        for <devicetree@vger.kernel.org>; Wed, 23 Aug 2023 07:36:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692801393; x=1693406193;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Xr0WXPB/dyDXmkBwE/up+Cse+tTESwjdOxAD9XzT4D4=;
        b=I4OLaVDt8t6QuVqQW0oXUFyaVK+p7WZ/eQVqlFs8sYbXEtTdVBjMuQhMNJ9QLMHnEU
         0fReHkk9UwbRYiWW7cZvqqAsECWh5ZJJ9wdI5vbHRtPN/wylFHPaOM10CfcUGsIKJWFl
         Cw14UXUWKZyvyVuI9uWEgNk9pcE0tsKOZ3WKzOVH5MV/PDsEkkRXzOIsli8ItO8RpCoF
         PgJvScEd3Q/A3NYiJdaIe82PtW1OHQSkzhcqQyhR7gW+LNeKXdzLj7R/81eEIxi1JAPN
         5gcpU3tsQekgNBfxLgIIFoWqt3kV+1MMJTewS4RdROWxj0CgtwB21uy5S44M4H4ylEfg
         093Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692801393; x=1693406193;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Xr0WXPB/dyDXmkBwE/up+Cse+tTESwjdOxAD9XzT4D4=;
        b=VZPRvCjecw6t1bi2RdTpSQ5MHmY29F3VSD8X6b+RXsNrKlwJjmAatPbRU+qyNstXPZ
         esqiof+XV5mAvhnWK9gjuO4t4LDhoniYYLx49OGl2n1AtfQmuHTa9P7hSah3KdVvyswV
         uT5Y0N0ihbL15jzrLgqCNITNDRBl7GjeqadflsQI2Ba+S8jIVbgtb7YzQwo8cT49+D5E
         1HLWWMho4hDkpM2ReES5dV9uG4eHhwmnoYFSXDpUH1zonZDMLIoIHSfAHs5OUUDAa61y
         6bEm2AEL5cu1BlL6tR8rXxkJgjuJYyKvhhZRrSZbckR4Ad5AhrXzZB8MlEIuGRicFRqI
         wPOg==
X-Gm-Message-State: AOJu0YxYx/LXtefNs7qSaPhPN7lEcdARS7ZKi1T1DB0qQeyhoKLR+CMk
        HYSAWqz4xTWKAVaMhCpDmi498A==
X-Google-Smtp-Source: AGHT+IEeAzz7Fc12Wo7U8YW9ztfNhpcjpgIT0TvWojmUwAQpAv63XRnUFQxMfqT5iNtoJ4mpMfzt6A==
X-Received: by 2002:a05:6512:615:b0:4fd:c923:db59 with SMTP id b21-20020a056512061500b004fdc923db59mr8238274lfe.15.1692801392840;
        Wed, 23 Aug 2023 07:36:32 -0700 (PDT)
Received: from [192.168.1.101] (abyj76.neoplus.adsl.tpnet.pl. [83.9.29.76])
        by smtp.gmail.com with ESMTPSA id z6-20020ac24186000000b004fe36bae2d6sm2668882lfh.81.2023.08.23.07.36.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Aug 2023 07:36:32 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Subject: [PATCH RESEND v2 0/3] MM8013 fg driver
Date:   Wed, 23 Aug 2023 16:36:12 +0200
Message-Id: <20230621-topic-mm8013-v2-0-9f1b41f4bc06@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAF0Z5mQC/32NsQ7CIBiEX8Uwi6E/LW2dHOzqoKNxAIotSQsNV
 KJp+u4im4lxvLt89y3IK6eVR/vNgpwK2mtrYoDtBsmem05h3caMgAAlDDI820lLPI4VySimJSu
 LWtWVgApFRHCvsHDcyD5C5jEMsZycuutnclzRubk0pyO6xb7XfrbuldQhS+tvS8gwwXlOSsmAE
 VLQw6ANd3ZnXZeeAvyj4UMLxQBoUZW8/aLXdX0D46K64AQBAAA=
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Sebastian Reichel <sre@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1692801391; l=1223;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=Tv3ZU/Y/oaQ4y5pFMlSPbbUL6DzIaXj6CuswkA+bj4I=;
 b=/B5r4Op5WONnZuRO1PGIp3BIjVAGY9BDl1xMD2zOyDaOCzbxX32YcA++owcL9ZqgW/QBeg54G
 /uXHBvX9edsCZui9lPRBF9nUFPOw+j5zT15cZxLYEIlSKMeYbQjOPEX
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Resending due to no responses for 2 months.

This series brings support for the Mitsumi MM8013 Li-Ion fuel gauge.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
Changes in v2:
- Fix typo in patch 2 commit message
- Drop driver.owner in patch 3
- Add PRESENT psy property
- Pick up tags
- Link to v1: https://lore.kernel.org/r/20230621-topic-mm8013-v1-0-4407c6260053@linaro.org

---
Konrad Dybcio (3):
      dt-bindings: vendor-prefixes: Add Mitsumi Electric Co., Ltd.
      dt-bindings: power: supply: Document Mitsumi MM8013 fuel gauge
      power: supply: Introduce MM8013 fuel gauge driver

 .../bindings/power/supply/mitsumi,mm8013.yaml      |  35 +++
 .../devicetree/bindings/vendor-prefixes.yaml       |   2 +
 MAINTAINERS                                        |   5 +
 drivers/power/supply/Kconfig                       |   9 +
 drivers/power/supply/Makefile                      |   1 +
 drivers/power/supply/mm8013.c                      | 283 +++++++++++++++++++++
 6 files changed, 335 insertions(+)
---
base-commit: 60e7c4a25da68cd826719b685babbd23e73b85b0
change-id: 20230621-topic-mm8013-376759e98b28

Best regards,
-- 
Konrad Dybcio <konrad.dybcio@linaro.org>

