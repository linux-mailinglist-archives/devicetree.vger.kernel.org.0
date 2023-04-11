Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 791C56DE55C
	for <lists+devicetree@lfdr.de>; Tue, 11 Apr 2023 22:06:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229838AbjDKUGu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Apr 2023 16:06:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50486 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229737AbjDKUGl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 Apr 2023 16:06:41 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BCC755260
        for <devicetree@vger.kernel.org>; Tue, 11 Apr 2023 13:04:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1681243496;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=zenMfB5Zn+UbigAKsZIPpQknObixx5MnqQjCcDXL53w=;
        b=PnJIduVH78QLe+WMFShK+FSlwaawBGwyfbY+OAei0HzKTwoG6o7Bbk2/gNtl3imeAJ59/N
        bKVNGEHmCzTqFo3E96e4liWEqLcHMr1ZWhV0LlW3Sw3yl3nc8iC7iaWIzK8+ms54SMWBUz
        A3oheb46igKxx1U9sbIl9AyEoramo2g=
Received: from mail-oo1-f72.google.com (mail-oo1-f72.google.com
 [209.85.161.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-63-ILggMUbLNKum5pjW2ibjbA-1; Tue, 11 Apr 2023 16:04:55 -0400
X-MC-Unique: ILggMUbLNKum5pjW2ibjbA-1
Received: by mail-oo1-f72.google.com with SMTP id s64-20020a4a5143000000b00541befd168bso2930797ooa.0
        for <devicetree@vger.kernel.org>; Tue, 11 Apr 2023 13:04:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681243495;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zenMfB5Zn+UbigAKsZIPpQknObixx5MnqQjCcDXL53w=;
        b=ligHX9BY0AmXLtgAIpk1EPHbNANQGK2GjFJUpQOIwGMIDuo7xmHi6ICfw+2CCzueAo
         i/6Beh3mFA2/ZaBYnhGLwe4Ozpdztbw9vqQvktUf4p9MAEJe/S/FjB2uwhkk5iy9MJT8
         K+Zx/jGYYx0s17c9E5tsT1Q6f/fPfpaq8lZ4n+bEzaRVMF5XnfwUdzTmXmajLFsjuvoj
         W5yNi1kxvISUw9uv79QWvtmB5RDteJLE9r6broDecz3fggNChSac8783idyLH45S5C/j
         /3Y/FEr1fNPQPVRM+PBvY/hyuzEvXVKIsDnhMTlIptlDL4Yp/plLcRUSSNthkepvtqct
         oSrw==
X-Gm-Message-State: AAQBX9fWmjCzKmVRfcKFL3KzGOtH+4suvfHd12tbCwcc39wwoQ8tI8jA
        RMPcIrPLo8ptPgHVPvLD73ldI9BC+UXJoYZYwY7uu6RRc6Ldv8PsbalC6LbATN9JHyYepBPbTw7
        1Ol8nXk/B7N/DADcwFqnjEA==
X-Received: by 2002:aca:1a09:0:b0:387:29c3:f0a2 with SMTP id a9-20020aca1a09000000b0038729c3f0a2mr4713857oia.9.1681243494807;
        Tue, 11 Apr 2023 13:04:54 -0700 (PDT)
X-Google-Smtp-Source: AKy350Z2XdmlUFC0MeVBWwPYue4CzrV/HIPiMXHL6V/DCyUF8qsQRSj5c1pDR57qf/aw++mecVdqjw==
X-Received: by 2002:aca:1a09:0:b0:387:29c3:f0a2 with SMTP id a9-20020aca1a09000000b0038729c3f0a2mr4713854oia.9.1681243494605;
        Tue, 11 Apr 2023 13:04:54 -0700 (PDT)
Received: from halaney-x13s.attlocal.net (104-53-165-62.lightspeed.stlsmo.sbcglobal.net. [104.53.165.62])
        by smtp.gmail.com with ESMTPSA id e20-20020a056808149400b00387764759a3sm5868545oiw.24.2023.04.11.13.04.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Apr 2023 13:04:54 -0700 (PDT)
From:   Andrew Halaney <ahalaney@redhat.com>
To:     linux-kernel@vger.kernel.org
Cc:     agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
        pabeni@redhat.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org,
        bhupesh.sharma@linaro.org, wens@csie.org, jernej.skrabec@gmail.com,
        samuel@sholland.org, mturquette@baylibre.com,
        peppe.cavallaro@st.com, alexandre.torgue@foss.st.com,
        joabreu@synopsys.com, mcoquelin.stm32@gmail.com,
        richardcochran@gmail.com, linux@armlinux.org.uk, veekhee@apple.com,
        tee.min.tan@linux.intel.com, mohammad.athari.ismail@intel.com,
        jonathanh@nvidia.com, ruppala@nvidia.com, bmasney@redhat.com,
        andrey.konovalov@linaro.org, linux-arm-msm@vger.kernel.org,
        netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org, ncai@quicinc.com,
        jsuraj@qti.qualcomm.com, hisunil@quicinc.com, echanude@redhat.com,
        Andrew Halaney <ahalaney@redhat.com>
Subject: [PATCH net-next v4 05/12] net: stmmac: Remove unnecessary if statement brackets
Date:   Tue, 11 Apr 2023 15:04:02 -0500
Message-Id: <20230411200409.455355-6-ahalaney@redhat.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230411200409.455355-1-ahalaney@redhat.com>
References: <20230411200409.455355-1-ahalaney@redhat.com>
MIME-Version: 1.0
Content-type: text/plain
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The brackets are unnecessary, remove them to match the coding style
used in the kernel.

Signed-off-by: Andrew Halaney <ahalaney@redhat.com>
---

Changes since v2/v3:
    * None

Changes since v1:
    * This patch is split from the next patch since it is a logically
      different change (Andrew Lunn)

 drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c
index 21aaa2730ac8..6807c4c1a0a2 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c
@@ -281,9 +281,8 @@ static int stmmac_mdio_read_c22(struct mii_bus *bus, int phyaddr, int phyreg)
 	value |= (phyreg << priv->hw->mii.reg_shift) & priv->hw->mii.reg_mask;
 	value |= (priv->clk_csr << priv->hw->mii.clk_csr_shift)
 		& priv->hw->mii.clk_csr_mask;
-	if (priv->plat->has_gmac4) {
+	if (priv->plat->has_gmac4)
 		value |= MII_GMAC4_READ;
-	}
 
 	data = stmmac_mdio_read(priv, data, value);
 
-- 
2.39.2

