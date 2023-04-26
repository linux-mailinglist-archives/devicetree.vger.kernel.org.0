Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 499C76EF90B
	for <lists+devicetree@lfdr.de>; Wed, 26 Apr 2023 19:11:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234335AbjDZRLu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Apr 2023 13:11:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37608 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234327AbjDZRLt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Apr 2023 13:11:49 -0400
Received: from out162-62-57-137.mail.qq.com (out162-62-57-137.mail.qq.com [162.62.57.137])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BA257121
        for <devicetree@vger.kernel.org>; Wed, 26 Apr 2023 10:11:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
        t=1682529096; bh=1KlUDx3CkkWJEgkDKs1pH/WOg3N32N5GHA91r2xNTlo=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References;
        b=BvsTAYIbwApxxbliPQYwK42IW0BBSqzJZfyDFKHb45JRj0hqJsEBC4nFrRWiqiM7O
         IlZk91xUdlWjT3+Rpn+eVoemaki252YlBUBWYe0SiVf5ccXKM0L07/RRjn0e945h45
         xznu3ZQI0mYLZ8PzsFJqUXe2LoESwSj5Cnyh6Gf4=
Received: from cyy-pc.lan ([2001:da8:c800:d084:c65a:644a:13d7:e72c])
        by newxmesmtplogicsvrszc2-0.qq.com (NewEsmtp) with SMTP
        id 2DD9263F; Thu, 27 Apr 2023 01:11:29 +0800
X-QQ-mid: xmsmtpt1682529089tn6lyi6gr
Message-ID: <tencent_0F23181FB02085B690E30BEE4BCC49087506@qq.com>
X-QQ-XMAILINFO: MR/iVh5QLeiexUNVyYWNTlxVkZnL2rZWYLVgEeER4QcbGLKJO1ANXu0+jQhHXq
         EPW19vc60ahUluul5IT3VcRcw8XuJtTcP/hzlrzcilRt5T7xGysELRPt8pn+VxAI5DmVWXs1Injb
         PhzQsL9Q1GhjzvS0CbAAHo/XTn6BZLI2VGvmLRebKEFcqlk33DZ1YXFP5IOUImLLXWt1gVUhb5Et
         yiKnGa4IJI/71vB0wUQgOLr2RlHrQD0X219TG3898OIz0vJeV3odukAb2rjd90EMtQiF6qQKtzId
         R2guIASKZa7VjeRamtMbAcWfQnzFuOjhisbxcqyKuh16zNxV4wtqUmjmvBogZfGFBrrmyMXPd1Co
         tteoTv/PwRICBV7sTP001RMFJ8t/1e1ubplXK0FFV81Cqug5taZmws1KRtbFe65bW2fTO2dkgLQq
         QKmyAtSpp/0eHqJcrxBXO5I2HHnc/m0cVgahwpZbQq3yHIw5xJPr+2lxdLFg4fJTLvmTUNaPC2pY
         hHsMpCFGYWXhgTLVNIj0SaRUhIEMMkE7v7AvvBlPCMW0/Uzxenao//MgdvPMtEM/9KwvBUAptORd
         uOMw07p5ovatpMHI6r9AEDFAbg9qsN630gaDywGekJ3S36K2Q//3BIZOcSCeS/MUEky3N50dD27g
         XZvkiQ+KZzP3NT79IOKX3YuvvkyrYNyQ/geCLT/FdlhbIcXQ/HFpaQbxS0+6rE8XxfNBly2ITGwA
         h6Q+mqtFNk0AWW4uD8dkyFp928Hp6P9cgSFjVQXpG8GdOZXsladwrAl5KqrIgTbEMHBAzgw6x7sy
         Jm7A0+PXfl+uqByrU8BDVfzQlxwGV0o8h7b9WDhSgvCPu4HmAgddX24gzhqlaHQehmWTEf1Lg+0j
         EBRnG+MRB1JCaLZITDmFYHwFoVOIiSLaQKQLrvitb5GchAi5kGkw4mKTvkkprk9Kw0BO+Wh+ZCAZ
         6KOYPQyDdKepCy3C/eyte13v8NkX3Ll1hAS3422X50J/uFq841jyPQu0o7VtsZ
From:   Yangyu Chen <cyy@cyyself.name>
To:     conor@kernel.org
Cc:     ajones@ventanamicro.com, conor.dooley@microchip.com,
        cyy@cyyself.name, devicetree@vger.kernel.org, i@zenithal.me,
        krzk+dt@kernel.org, linux-riscv@lists.infradead.org,
        palmer@dabbelt.com, paul.walmsley@sifive.com, robh+dt@kernel.org,
        soha@lohu.info, twd2.me@gmail.com
Subject: Re: [PATCH v1 1/2] RISC-V: skip parsing multi-letter extensions starting with caps
Date:   Thu, 27 Apr 2023 01:11:00 +0800
X-OQ-MSGID: <20230426171100.19591-1-cyy@cyyself.name>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230426-getting-tactile-e6cee2cdf870@spud>
References: <20230426-getting-tactile-e6cee2cdf870@spud>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,HELO_DYNAMIC_IPADDR,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        RDNS_DYNAMIC,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Wed, 26 Apr 2023 15:37:58 +0100, Conor Dooley wrote:
> Perhaps the thing to do is to actually take Yangyu's first patch and my
> second one, since the problem with backwards compatibility doesn't stop
> the kernel from being more permissive?

How about taking my first patch[1] since the ECR[2] mentioned that
the format of the ISA string is defined in the RISC-V unprivileged
specification? However, I think we still need to stop the parser if
some characters that the parser is not able to handle as Andrew Jones
mentioned in the previous mail[3]. In this case, we still need to add
some code to stop parsing if any error happens.

In my humble opinion, backward compatibility can be solved by backports
to LTS kernels. I think the better option is to allow using uppercase
letters in the device-tree document to make the parser coherent with
RISC-V ISA specification but recommend using all lowercase letters for
better backward compatibility.

[1] https://lore.kernel.org/all/tencent_63090269FF399AE30AC774848C344EF2F10A@qq.com/
[2] https://drive.google.com/file/d/1nP3nFiH4jkPMp6COOxP6123DCZKR-tia/view
[3] https://lore.kernel.org/all/d7t6nxmblmyqriogs4bxakpse3qc7pc6cczjnhmkpk4kjwvgcb@3aihh3erdn6p/

Thanks,
Yangyu Chen

