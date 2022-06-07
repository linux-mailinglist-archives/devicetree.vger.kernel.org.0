Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2098854003D
	for <lists+devicetree@lfdr.de>; Tue,  7 Jun 2022 15:41:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243703AbiFGNlE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Jun 2022 09:41:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37670 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242222AbiFGNlD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Jun 2022 09:41:03 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 267E9BCE8B
        for <devicetree@vger.kernel.org>; Tue,  7 Jun 2022 06:41:02 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id q7so24237806wrg.5
        for <devicetree@vger.kernel.org>; Tue, 07 Jun 2022 06:41:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=H1AtsGdEkkqVoDoziwXz7u9gxAqoupVuYeRio02Yhgc=;
        b=Y7PerUmuAC+I+TxAwvOKEOP3NPC1VHKehphs8e30npMwl+dDGqLkSX50iz2BXzKBVr
         7MfkDNfKgZJdv3e0N3tDHnkvGBfJKgT1Vpa0sPApGKlS9fgDUmDh5p1BWAtqpdYFXkP/
         N6zgT8ZXa6HyXYbZgM1F3oncwhzyc2rp2Kjil9QhjHz63F1a8LUvwWaiGuVnWaeS3eSR
         QOV3pLw9hRFqEB7F1+EtoPZZHkVV91Hb9GSX6W1eyOAjQegLMTX/jiafWIbT4cmvHK6T
         Wvc0dr+kRoe+jdDOctNwp0EwnnBk0I503HGE+3TnE850llkSTRN7Z2WOOMWudW5GpP7V
         +dzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=H1AtsGdEkkqVoDoziwXz7u9gxAqoupVuYeRio02Yhgc=;
        b=OuKYJVrtRoHdMXn/8D3VypWedpA02a5jIAINvNlcE6QS/rs8vy2Rv7jxfk8ecqWtuG
         kexULzTLNNR/0LFmWtyM+74m2vM9F/zaCgvZd6EWQmqVhtOv5JTLr3e3UfNjR/FfH/z/
         5U2c316gOW7322j9aef8jHmjSWdHU8ixneASQZigilTGhDTnf1WCUCcmhIDV6wjoX+/6
         yF+s5CNQOzFou+l7kshFFGovedn28LSoJtSoUJ28gR1Rap/Jc2yj+6TiAtPS8B6IJPTB
         VPwj1fP8H1IN3sXK9ntHv6TyaB2T7VFy94ncxDKszOrSogoH9tMVW5FoAorvPM6l+NrU
         R/nQ==
X-Gm-Message-State: AOAM533Z9BSEHrcUmHBKe7k1yC0jF+OXyW4wRCGGrRNbOjFj/tbvTZCM
        Nhs1Fi+wE49ehVIXZjg48DlX89kuZMAsffqu
X-Google-Smtp-Source: ABdhPJzL9EH31N8AERCGNlck5JOegjARRYqZjS+5PlKTlV1mXDSm7m5WtDLdrVtfkbpWaNxGfC9wHA==
X-Received: by 2002:a5d:59a4:0:b0:218:4a29:f12b with SMTP id p4-20020a5d59a4000000b002184a29f12bmr6732079wrr.145.1654609260350;
        Tue, 07 Jun 2022 06:41:00 -0700 (PDT)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id k7-20020a5d6d47000000b0020e5e906e47sm17818792wri.75.2022.06.07.06.40.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jun 2022 06:40:59 -0700 (PDT)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     sakari.ailus@iki.fi, jacopo@jmondi.org, paul.j.murphy@intel.com,
        daniele.alessandrelli@intel.com, mchehab@kernel.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org
Cc:     dmitry.baryshkov@linaro.org, konrad.dybcio@somainline.org,
        andrey.konovalov@linaro.org,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Subject: [PATCH 0/2] Add imx577 compatible to imx412
Date:   Tue,  7 Jun 2022 14:40:55 +0100
Message-Id: <20220607134057.2427663-1-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Right now the imx412 and imx577 are code and pin compatible however, they
are distinct pieces of silicon.

Document imx577 as a compatible enum and add the compat string to imx412.c.
This allows us to differentiate these chips in DTS and potentially to apply
any future imx412 or imx577 specific changes appropriately.

Bryan O'Donoghue (2):
  media: dt-bindings: imx412: Add imx577 compatible string
  media: i2c: imx412: Add imx577 compatible string

 Documentation/devicetree/bindings/media/i2c/sony,imx412.yaml | 5 ++++-
 drivers/media/i2c/imx412.c                                   | 1 +
 2 files changed, 5 insertions(+), 1 deletion(-)

-- 
2.36.1

