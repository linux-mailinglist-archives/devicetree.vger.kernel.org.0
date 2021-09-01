Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DE9233FD681
	for <lists+devicetree@lfdr.de>; Wed,  1 Sep 2021 11:20:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243531AbhIAJUk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Sep 2021 05:20:40 -0400
Received: from out5-smtp.messagingengine.com ([66.111.4.29]:38043 "EHLO
        out5-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S243534AbhIAJUj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Sep 2021 05:20:39 -0400
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
        by mailout.nyi.internal (Postfix) with ESMTP id B1CD95C0211;
        Wed,  1 Sep 2021 05:19:42 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute3.internal (MEProxy); Wed, 01 Sep 2021 05:19:42 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm3; bh=NOR2s9JSI5Z0L
        04mBok9kQ21WeoBN4SpmgFz9vLKk90=; b=wQrtshfHglhEZJzdv7B2MiKjdnG2y
        45DP+5K2px9hwJh8pBeS35XC6fqr+rYhENv9dLb14wiZ7lq6tQvVfNTaavurmI+g
        SzM6gkUIwmWIRMqzeWnSqUCfkhBjc/AmAqiJqf3k9omWjHYXpWG7LP/wBjGvOlm1
        Kh3H6azso1QalrtwekkQ8lvX8iTmG6pkhsp50xbqhwqA+3TxaccColQaVovTDAAN
        tcDj7Cqld6MCp/88PR1+dGzeo7WqNxujEr7zxbKjLuF5oGyqqerOZuADWuaEBfOj
        MTmO+W67AsfW4jWZrLzx1+zsdOB2J4/S+EidPZmbyfLiP+HlxQ+2Gt0tw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm3; bh=NOR2s9JSI5Z0L04mBok9kQ21WeoBN4SpmgFz9vLKk90=; b=VgVGFE8u
        PDCrRS9LUChGNUz4RuJe0jquP+OCoooTpD1UwV+Ta9jwlSuu0bPEhM8382fkx1Vn
        HiDhWIQIAJMeip32fTtqhVuoo9kQ2cVby362zBP+p+D8anS+Qsji0jRKfvWmR2CK
        VTHxkSBeBzxkPzRF91z0GmMH9k+sbQ3SJpbOIrDdO9+UzymCzMyLKEqRtgOWWhEu
        CtMs3TNSBbAxVIv9Nadx8nmFIBdK15NpdBwiuf4gUymYssVR6pHMMVD8sCBISLwP
        mBAbom7F7JXP2T6yaoZQaO+Wz4Xi1zsO7QYtb1CUoVnZIr2ir1CfeAwwYBT698r8
        5tJehBIjqI3how==
X-ME-Sender: <xms:rkUvYYpvuxU5d3uFWFGxtqX5x3BtPuNKSewZtIMfauwrxSXMjO_R8g>
    <xme:rkUvYeqVMm7A7hxLbtiMrg2j-hKWDjzYUzsfET23Lyab-bEdM7tlkEHbSmj3I46TU
    bt3JJ51rH08sK0jNoI>
X-ME-Received: <xmr:rkUvYdNoUnVgZ0vzOZ5c5N4K2KRDMQv2_N1akWOfYgXpRaiAS2HDAUSjJB-RSD2JPtM_ncTrDuvfD02sqxPwppvPEStLNPZaWiCV>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddruddvfedgudehucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
    vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
    htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
    hedvnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmh
    grgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:rkUvYf6fq98LVnvErIicoN9DMUD5Yya8En_IOquZQasmBTsaPihTEA>
    <xmx:rkUvYX4XPWw_TNK-930rBo2tWYn0axwAuCmEVEMqy_5suV1fb0Zu4A>
    <xmx:rkUvYfjQLGYylWeYT2gSAddBHv1869_VPowLmDZMtiSgKWIsb0NBdA>
    <xmx:rkUvYUvLa_Ew8hIiVQHu3z5zd52F27KTMkmRPvhdxm2lG6lKQdLtaw>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 1 Sep 2021 05:19:42 -0400 (EDT)
From:   Maxime Ripard <maxime@cerno.tech>
To:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <maxime@cerno.tech>,
        =?UTF-8?q?Jernej=20=C5=A0krabec?= <jernej.skrabec@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com
Subject: [PATCH v2 26/52] dt-bindings: media: ti,cal: Fix example
Date:   Wed,  1 Sep 2021 11:18:26 +0200
Message-Id: <20210901091852.479202-27-maxime@cerno.tech>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210901091852.479202-1-maxime@cerno.tech>
References: <20210901091852.479202-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The OV5640 sensor used in the example doesn't follow the binding and
omits the regulators. Add some to make the example valid.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 Documentation/devicetree/bindings/media/ti,cal.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/media/ti,cal.yaml b/Documentation/devicetree/bindings/media/ti,cal.yaml
index 65177cd69514..66c5d392fa75 100644
--- a/Documentation/devicetree/bindings/media/ti,cal.yaml
+++ b/Documentation/devicetree/bindings/media/ti,cal.yaml
@@ -154,7 +154,9 @@ examples:
         camera-sensor@3c {
                compatible = "ovti,ov5640";
                reg = <0x3c>;
-
+               AVDD-supply = <&reg_2p8v>;
+               DOVDD-supply = <&reg_1p8v>;
+               DVDD-supply = <&reg_1p5v>;
                clocks = <&clk_ov5640_fixed>;
                clock-names = "xclk";
 
-- 
2.31.1

