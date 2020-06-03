Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 228741ECC24
	for <lists+devicetree@lfdr.de>; Wed,  3 Jun 2020 11:05:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725944AbgFCJFX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Jun 2020 05:05:23 -0400
Received: from sonic317-17.consmr.mail.ne1.yahoo.com ([66.163.184.236]:44249
        "EHLO sonic317-17.consmr.mail.ne1.yahoo.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1725854AbgFCJFX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Jun 2020 05:05:23 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1591175121; bh=AEu8nK9QzTA2tbqo2l5BVwPShMs+2VsmLoZOZv6b3Lc=; h=Date:From:Reply-To:Subject:References:From:Subject; b=dx5YhxAiQ7P6fJr4jm/zB4j0KCPmWtzR73YVyFtiJ9PxwhbsmhBbJq9NK3zOa0tLs8/NicgauenVpbpATav3h9NcA5wQHdeBdt6bSrtt4UK3QQnKdkCrcSYv48i89vW/gf+c6uzc1hm1eDzn/cW7/HTCBBhEmPScl8SRVfsJn8YAYrMZLsXLhy5Gy+Ns1Fb3H6Wftk7tFsekTT6VRIeQ2LZSuBrb+XGSQ0/QjYTYSxT98rIADrWjVEZ3p+3LfGG/5mNfNQ/Q8bQlXJOiuntlyme2vme7HewoeofHtnGrJL2c7nyipEWYLiAkZCjSXTIBS4K7iL0iYEBbu3B1Aiy3Dg==
X-YMail-OSG: Fha._QcVM1mJNHpgXT7K5wUS7r1e21JIdWM5lCozBWeURVMGjDHdZoao3rLJm0H
 wZfhNGJSR7s3OVRyixijV65sVvZGcNCDPMKkCjeZ_orL2tGTPRXH5UP9VHgG3oZc9Uj8s0otuVFK
 Meq32rLGtr32QDtxcJA.eyR8I9oDcBcuZD_LGQo9PpnSPphl9LQUkagKrlo46.qUonrewVAuDTAE
 t9uSo_1TtcMUMWbfDTgSkAYloO8Vs30qF8_UiDpBtsXDQzSBkwucaXWohS5edhHNWZfmSHE.NXw3
 aX5FvwkbaarUvnwbt0Aj8KlC5CM56NUE6AHzffoWMQHEmHBmGkxbXiGW.ksl_4r2YrX.iDFywfug
 nAMZSQhKP6jKYYzX2z.ElJVmR2SPsVyhWuBA2EhSmJ18Jb6doA9Gmx6C95j11qftzbkwk3.9FdvM
 4QjEhZFh_7jZs4CXfshEktKGT7Cgma6djMsMPGYj3OcfG4TtrAoIkAV5OXL4_9LGphXp9K_H1bSB
 Nle5WFIw3llqZDlKbacczZePn9bkXMHWEhHQS9fD08TdBJ6J77imU6xH01YeM8r71b5GgM.KGI1J
 aJT5oSpKVlEwbD6TgsTaaux14um7eVWrj8lNJ226HyU3rM9OgE1Ek3SwjXR1lfJaGdRipHKopE6a
 Yv.4D2rS5MMaxxvSAqEd5df1T_n82dPxJRqNCxPu33z93pmcgH7v6CTcTXgPwoF3a50dfqlz.ea9
 PU10gqHxwPcnwu1QZFAEhEboCV9iCygT3C_85h9lqiNCO610QjRbbOK4eKpRHhw.gu4hy2CslPd2
 .qyggKZz6GoM9JKlCuqF9.da4UE2LXAIq_ZxWizumLBRzh9HVCN0OWwZsmJ.CBqfCBYAz6.KyB4s
 2OhzlqldeoatvOzVfvY52veSIeubDnChe3hAnLZVromULHnN1NkkHfbSpaX4NramF8zqu5EwD9ja
 2Wek92uN_Kkvn7XvjHU_Iypca5nYwFE4lIzj66m0wESXy.yG9CqJeE6uwK5FDauXctyTwO4lDUHZ
 DKP2l1rPgddHWqpbnkoxC35f7ntkt8sMeawmqqGBvWbe0jNs7z8AYlzxukPFWJq9h8Er4aNwtkoD
 cw3BwjDRxmPPZcgOhdrgG7RiyM2McrumBy8MRNpZDViIrq_MjZuRgTCPYKUNy_P_fF9xR4YEe9oJ
 XZL0aEzkcTp3t.ZoWqZ7P1nf4KTgDs2hyzA6RgV0hU_TWKuR181lrl6r66os4effS4mD.FzD3fbW
 NTwTicrmyyERC5rtZxp0toRWqT9slgg67XeLuhcx_xtiz3VGgKC3KeUOaohXS.6Dj7OtM0qhnwYk
 QPEgoJeQEyaZT1u5e5ewQANOydorfFywgDS1TF8_VX43wJIxiCfcyblo-
Received: from sonic.gate.mail.ne1.yahoo.com by sonic317.consmr.mail.ne1.yahoo.com with HTTP; Wed, 3 Jun 2020 09:05:21 +0000
Date:   Wed, 3 Jun 2020 09:03:21 +0000 (UTC)
From:   "Mrs. Maureen Hinckley" <mau1@tgkp.net>
Reply-To: maurhinck8@gmail.com
Message-ID: <959378762.1944527.1591175001111@mail.yahoo.com>
Subject: 
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
References: <959378762.1944527.1591175001111.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.16037 YMailNodin Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36
To:     unlisted-recipients:; (no To-header on input)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



I am Maureen Hinckley and my foundation is donating (Five hundred and fifty=
 thousand USD) to you. Contact us via my email at (maurhinck8@gmail.com) fo=
r further details.

Best Regards,
Mrs. Maureen Hinckley,
Copyright =C2=A92020 The Maureen Hinckley Foundation All Rights Reserved.
