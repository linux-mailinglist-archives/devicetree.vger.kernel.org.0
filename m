Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6CAFF754789
	for <lists+devicetree@lfdr.de>; Sat, 15 Jul 2023 10:46:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229913AbjGOIqR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 15 Jul 2023 04:46:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45820 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229530AbjGOIqQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 15 Jul 2023 04:46:16 -0400
X-Greylist: delayed 887 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sat, 15 Jul 2023 01:46:14 PDT
Received: from fallback21.i.mail.ru (fallback21.i.mail.ru [79.137.243.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AE21D30DE
        for <devicetree@vger.kernel.org>; Sat, 15 Jul 2023 01:46:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=inbox.ru; s=mail4;
        h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:From:Subject:Content-Type:Content-Transfer-Encoding:To:Cc; bh=J3rISYPlkGFL95ndHrvljN8/6P8l+lGCoXyZ2s9OWKw=;
        t=1689410774;x=1689500774; 
        b=iEkcC+ma6moO9A3SyD02uvzK6bxDwH/4i+JA5sDhKz5VGC4S9p6qHaRb7/wYzzN7sv9ab2ZIA58HBktzsP3lAknvnMIW+tD6ThGHMJDD7dqup3dkUrKpBg9P/iDoh9iAJZhoiw0v0HHFnkXE4y6JLIaJC1kNJRoXyP27X/KHMwcJmAYLk5WDH5TUKCtAFXKmZU9KvaSzyG+dzn/04EbX2zVz9HNSPpl0l3Vuh68oK+K5RSfnBF8/fYmzBKw6CRHv1K39B/R4e8eY1G/71OrJvhhLq459QLJ4gTwI2V/auWAV8T8f+/2Hw9ybdFLv+x4TgyNoZ2+qgoRrCpx+zwu+fA==;
Received: from [10.161.55.49] (port=40346 helo=smtpng1.i.mail.ru)
        by fallback21.i.mail.ru with esmtp (envelope-from <fido_max@inbox.ru>)
        id 1qKago-003JvW-I7
        for devicetree@vger.kernel.org; Sat, 15 Jul 2023 11:31:42 +0300
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=inbox.ru; s=mail4;
        h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:From:Subject:Content-Type:Content-Transfer-Encoding:To:Cc; bh=J3rISYPlkGFL95ndHrvljN8/6P8l+lGCoXyZ2s9OWKw=;
        t=1689409902;x=1689499902; 
        b=KBF1OpYTqTOKBqbW5hHyYdKHWFMq6mB2KLQAVYc37AEHgKQkBePLN7zSNEdngQWDbCGIU4CTUWks72e3kVqVp3MiyHSoCkrii8YFhbCPEnmw9p6coLcTZZeniadNP2kjAbiNi9riXwEl4VrW8pQuYiSyPolLMNWNFyBQdWGIcJRCExpgWZ+bHQ7tNYFR9kEH584g9f/y95UkqJIPxr9Y2rouZRnCSQ+bGHrz1X6i+nfaYi+piP1izhkUzYwtLbK8YiSb1O+BXlwzMRknokYr7W3/ccgahbx4qBAFqJQx+0poDPHdM0Ztv4EF7MXSTcvNnCBewoIlCRhcW5newP9yYQ==;
Received: by smtpng1.m.smailru.net with esmtpa (envelope-from <fido_max@inbox.ru>)
        id 1qKagY-0004Hr-NP; Sat, 15 Jul 2023 11:31:27 +0300
From:   Maxim Kochetkov <fido_max@inbox.ru>
To:     alsa-devel@alsa-project.org
Cc:     Maxim Kochetkov <fido_max@inbox.ru>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>,
        Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
        Sameer Pujar <spujar@nvidia.com>,
        Astrid Rost <astrid.rost@axis.com>,
        Robert Hancock <robert.hancock@calian.com>,
        Aidan MacDonald <aidanmacdonald.0x0@gmail.com>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Herve Codina <herve.codina@bootlin.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2] ASoC: simple-card: add triggers parsing from DT node support
Date:   Sat, 15 Jul 2023 11:30:44 +0300
Message-Id: <20230715083046.108674-4-fido_max@inbox.ru>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230715083046.108674-1-fido_max@inbox.ru>
References: <20230715083046.108674-1-fido_max@inbox.ru>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailru-Src: smtp
X-4EC0790: 10
X-7564579A: B8F34718100C35BD
X-77F55803: 4F1203BC0FB41BD9A075ED63965291970CED0DF8012B17C85A461DE8ED8B12B5182A05F5380850401C56FA349A0FA89ADB642822489F5C4D9BC2229FC0912CDE88E8618D3BDB6166
X-7FA49CB5: FF5795518A3D127A4AD6D5ED66289B5278DA827A17800CE78CB87876C5D626D4EA1F7E6F0F101C67BD4B6F7A4D31EC0BCC500DACC3FED6E28638F802B75D45FF8AA50765F790063727C65896DA7AF7D78638F802B75D45FF36EB9D2243A4F8B5A6FCA7DBDB1FC311F39EFFDF887939037866D6147AF826D89AD385BDEC2F18500DC1904AD9B595526F9789CCF6C18C3F8528715B7D10C86878DA827A17800CE70F3DDF2BBF19B93A9FA2833FD35BB23D9E625A9149C048EE33AC447995A7AD18E5D25F19253116ADD2E47CDBA5A96583BD4B6F7A4D31EC0BC014FD901B82EE079FA2833FD35BB23D27C277FBC8AE2E8B3D810FF210572CA4A471835C12D1D977C4224003CC8364762BB6847A3DEAEFB0F43C7A68FF6260569E8FC8737B5C2249EC8D19AE6D49635B68655334FD4449CB9ECD01F8117BC8BEAAAE862A0553A39223F8577A6DFFEA7CB24F08513AFFAC7943847C11F186F3C59DAA53EE0834AAEE
X-C1DE0DAB: 0D63561A33F958A5F20180CB9673E87CBBA65E42AFBF668997DD0E2E2372F5A9F87CCE6106E1FC07E67D4AC08A07B9B0AD74539164518AE59C5DF10A05D560A950611B66E3DA6D700B0A020F03D25A092FFDA4F57982C5F4CB5012B2E24CD356
X-C8649E89: 1C3962B70DF3F0ADE00A9FD3E00BEEDF3FED46C3ACD6F73ED3581295AF09D3DF87807E0823442EA2ED31085941D9CD0AF7F820E7B07EA4CF5C7E3B0192384F5C0B061047A047A47AECE3758B57FD5B7915CD745A4DBDB80525059624982F74617BBDB0A562C82D59ED5C4DC7CCCCAF54B1EF09894B269342E4EB81C25D25832B4C41F94D744909CEE921556F0E976A29E6EC0772259F8F8F8815B87D7EC76CB9
X-D57D3AED: 3ZO7eAau8CL7WIMRKs4sN3D3tLDjz0dLbV79QFUyzQ2Ujvy7cMT6pYYqY16iZVKkSc3dCLJ7zSJH7+u4VD18S7Vl4ZUrpaVfd2+vE6kuoey4m4VkSEu530nj6fImhcD4MUrOEAnl0W826KZ9Q+tr5ycPtXkTV4k65bRjmOUUP8cvGozZ33TWg5HZplvhhXbhDGzqmQDTd6OAevLeAnq3Ra9uf7zvY2zzsIhlcp/Y7m53TZgf2aB4JOg4gkr2biojTPX5czuwuGHa0dk41um7Gg==
X-Mailru-Sender: 689FA8AB762F73930F533AC2B33E986B831DABEBED3DB7FCE0D28502AC75BED098CC072019C18A892CA7F8C7C9492E1F2F5E575105D0B01ADBE2EF17B331888EEAB4BC95F72C04283CDA0F3B3F5B9367
X-Mras: Ok
X-7564579A: 646B95376F6C166E
X-77F55803: 6242723A09DB00B4C299D5088EBD47D40426EC7804F46194BDE298E57C0E9D56049FFFDB7839CE9E974A02759C12FD71439AF576C39DA0205F2494A75BF2E23B8DA795B65407A0ED
X-7FA49CB5: 0D63561A33F958A535E1888C88BA86E387733E2B820FDEDEA80CC34D797F91C7CACD7DF95DA8FC8BD5E8D9A59859A8B6A096F61ED9298604
X-D57D3AED: 3ZO7eAau8CL7WIMRKs4sN3D3tLDjz0dLbV79QFUyzQ2Ujvy7cMT6pYYqY16iZVKkSc3dCLJ7zSJH7+u4VD18S7Vl4ZUrpaVfd2+vE6kuoey4m4VkSEu530nj6fImhcD4MUrOEAnl0W826KZ9Q+tr5xhPKz0ZEsZ5k6NOOPWz5QAiZSCXKGQRq3/7KxbCLSB2ESzQkaOXqCBFZPLWFrEGlV1shfWe2EVcxl5toh0c/aCGOghz/frdRhzMe95NxDFdojJHpMQNyvvkNPGvn6VCzQ==
X-Mailru-MI: C000000000000800
X-Mras: Ok
X-Spam-Status: No, score=-0.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,RCVD_IN_VALIDITY_RPBL,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

It may be useful to specify trigger-start/stop for some DMA-based
simple audio card. So add this "trigger-start/stop" device tree
entry parser.

Signed-off-by: Maxim Kochetkov <fido_max@inbox.ru>
---
 sound/soc/generic/simple-card.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/sound/soc/generic/simple-card.c b/sound/soc/generic/simple-card.c
index a78babf44f38..f934534d5c94 100644
--- a/sound/soc/generic/simple-card.c
+++ b/sound/soc/generic/simple-card.c
@@ -181,6 +181,10 @@ static int simple_link_init(struct asoc_simple_priv *priv,
 	struct snd_soc_dai_link *dai_link = simple_priv_to_link(priv, li->link);
 	int ret;
 
+	ret = asoc_simple_parse_triggers(node, prefix, dai_link);
+	if (ret)
+		return ret;
+
 	ret = asoc_simple_parse_daifmt(dev, node, codec,
 				       prefix, &dai_link->dai_fmt);
 	if (ret < 0)
-- 
2.40.1

