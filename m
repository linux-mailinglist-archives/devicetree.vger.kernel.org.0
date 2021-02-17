Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5933F31D6ED
	for <lists+devicetree@lfdr.de>; Wed, 17 Feb 2021 10:22:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230426AbhBQJWi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Feb 2021 04:22:38 -0500
Received: from fallback18.mail.ru ([185.5.136.250]:60204 "EHLO
        fallback18.mail.ru" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229885AbhBQJWh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 Feb 2021 04:22:37 -0500
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mail.ru; s=mail3;
        h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From; bh=BGARRDZdxoj4f5KL1C5eYCqX6gpoS5p3IqdaKs7XAHY=;
        b=hLWKYs3kA3XkGucDvyVPrge3LPjLx60yUH+3jPFXNnI4YSzGoWVRyZGRuXM9LNfNrsq5T0gCrGHWuYwmIq74CZtaie6MFYGBQhNIhpOmaFmI6U/bs38jwaMg6VvXXqG9JlZYwmC1Jb3mp5rwnGAbkmwkzHGJsJGUxHA9OB+KTIU=;
Received: from [10.161.22.27] (port=52178 helo=smtp57.i.mail.ru)
        by fallback18.m.smailru.net with esmtp (envelope-from <shc_work@mail.ru>)
        id 1lCJ1p-0005Im-JV; Wed, 17 Feb 2021 12:21:50 +0300
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mail.ru; s=mail3;
        h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:From:Subject:Content-Type:Content-Transfer-Encoding:To:Cc; bh=BGARRDZdxoj4f5KL1C5eYCqX6gpoS5p3IqdaKs7XAHY=;
        b=E0lqVcvHwqVf1SONVo1WkntyYmE8XQ6kj3R5Uo1J+0FRkGk/9EV4F9UsCAKlCsM2R67EmcnDNUCCRh6O46kwrNwe3VEeX2pmzye2SzDhCYIuRR9BSFailb35eN220ckUY5PBLmCaxzvLaMNTiq1cR0Ar35zP1zjLsJf5iu8Asy0=;
Received: by smtp57.i.mail.ru with esmtpa (envelope-from <shc_work@mail.ru>)
        id 1lCJ12-0003lw-DF; Wed, 17 Feb 2021 12:21:01 +0300
From:   Alexander Shiyan <shc_work@mail.ru>
To:     linux-arm-kernel@lists.infradead.org
Cc:     devicetree@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
        Olof Johansson <olof@lixom.net>,
        Rob Herring <robh+dt@kernel.org>,
        Alexander Shiyan <shc_work@mail.ru>
Subject: [PATCH 5/5] ARM: dts: clps711x: Add an empty chosen node to top level DTSI
Date:   Wed, 17 Feb 2021 12:20:24 +0300
Message-Id: <20210217092024.1568-5-shc_work@mail.ru>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210217092024.1568-1-shc_work@mail.ru>
References: <20210217092024.1568-1-shc_work@mail.ru>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-7564579A: 646B95376F6C166E
X-77F55803: 4F1203BC0FB41BD975C3EC174F566922928A658C60196E87DF7449A63D990329182A05F538085040EE55B81AD75392400E385C46528F149F2A6675328243B24CC1D7ADE58A68BF4F
X-B7AD71C0: 14C14B24D00AF5AC321EF223B8115265C69B993890792DF82CDD5689AFBDA7A24A6D60772A99906F8E1CD14B953EB46D664EB3DCE7652753355D89D7DBCDD132
X-C8649E89: 4E36BF7865823D7055A7F0CF078B5EC49A30900B95165D34EE6683D9E546CC62B11BC22C3D45085DF43742D62B76116F821FF49D19CFAAAFA5245392747EE22B1D7E09C32AA3244C5C5D0ACEA13C93A1C644A405B5183BC935DA7DC5AF9B58C08D5DD81C2BAB7D1D
X-D57D3AED: 3ZO7eAau8CL7WIMRKs4sN3D3tLDjz0dLbV79QFUyzQ2Ujvy7cMT6pYYqY16iZVKkSc3dCLJ7zSJH7+u4VD18S7Vl4ZUrpaVfd2+vE6kuoey4m4VkSEu530nj6fImhcD4MUrOEAnl0W826KZ9Q+tr5ycPtXkTV4k65bRjmOUUP8cvGozZ33TWg5HZplvhhXbhDGzqmQDTd6OAevLeAnq3Ra9uf7zvY2zzsIhlcp/Y7m53TZgf2aB4JOg4gkr2biojJkVkVdRHm/9zxL5us9MNDg==
X-Mailru-Sender: 8261CADE3D3FA0B4C2F1292954F703E90AF589E98B9651EFB6EADDBDD8EDDEB9418422E3DA8723156B3B2BD4812BFD4DC77752E0C033A69E93554C27080790AB3B25A7FBAAF806F0AE208404248635DF
X-Mras: Ok
X-7564579A: 646B95376F6C166E
X-77F55803: 6242723A09DB00B4EBFCE21E1429DC4DC729172D244F6EB08EA6FC4197351C34049FFFDB7839CE9ECACF5275A6186BFC4E33B14832F2B22F736C41BE18AED606434C77609001368C
X-7FA49CB5: 0D63561A33F958A5C535A7DBDE7D7901B9A4B17181F9CBA7C64B31DD1D8D0FFF8941B15DA834481FA18204E546F3947CBA7556051D6825FBF6B57BC7E64490618DEB871D839B7333395957E7521B51C2DFABB839C843B9C08941B15DA834481F8AA50765F7900637889750A55773577B389733CBF5DBD5E9B5C8C57E37DE458BD9DD9810294C998ED8FC6C240DEA76428AA50765F790063743349E7DCD42F854D81D268191BDAD3DBD4B6F7A4D31EC0BEA7A3FFF5B025636A7F4EDE966BC389F9E8FC8737B5C2249D0C9BB9AE6BD5D69089D37D7C0E48F6CCF19DD082D7633A0E7DDDDC251EA7DABAAAE862A0553A39223F8577A6DFFEA7CCD798FA1FEA6F93543847C11F186F3C5E7DDDDC251EA7DABCC89B49CDF41148F53FDB0A1CE3EC88B3B503F486389A921A5CC5B56E945C8DA
X-C1DE0DAB: C20DE7B7AB408E4181F030C43753B8186998911F362727C414F749A5E30D975CF81F587C2CCB193390C168E146B464DBF7F9885B6B30DFCD9C2B6934AE262D3EE7EAB7254005DCED8DA55E71E02F9FC08E8E86DC7131B365E7726E8460B7C23C
X-D57D3AED: 3ZO7eAau8CL7WIMRKs4sN3D3tLDjz0dLbV79QFUyzQ2Ujvy7cMT6pYYqY16iZVKkSc3dCLJ7zSJH7+u4VD18S7Vl4ZUrpaVfd2+vE6kuoey4m4VkSEu530nj6fImhcD4MUrOEAnl0W826KZ9Q+tr5ycPtXkTV4k65bRjmOUUP8cvGozZ33TWg5HZplvhhXbhDGzqmQDTd6OAevLeAnq3Ra9uf7zvY2zzsIhlcp/Y7m53TZgf2aB4JOg4gkr2biojJkVkVdRHm/8uVkEqkEoMpA==
X-Mailru-MI: 800
X-Mailru-Sender: A5480F10D64C9005032BDE78ED4CC6EC095E794CA7DAE94143614683C78A5D0CEC9A243AB1C8B1BC3786569BE0651809D50E20E2BC48EF5AFF3C6AF3E48A3A73EAB4BC95F72C04283CDA0F3B3F5B9367
X-Mras: Ok
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Missing "chosen" node can cause issues when booting a kerne
with a boot-loader that doesn't create a chosen node if this
isn't present in the DTB since the decompressor relies on a
pre-existing chosen node to be available to insert the command
line and merge other ATAGS info.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/boot/dts/ep7209.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/ep7209.dtsi b/arch/arm/boot/dts/ep7209.dtsi
index e3d483a43ae6..1d62673a848d 100644
--- a/arch/arm/boot/dts/ep7209.dtsi
+++ b/arch/arm/boot/dts/ep7209.dtsi
@@ -10,6 +10,8 @@ / {
 	model = "Cirrus Logic EP7209";
 	compatible = "cirrus,ep7209";
 
+	chosen { };
+
 	aliases {
 		gpio0 = &porta;
 		gpio1 = &portb;
-- 
2.26.2

