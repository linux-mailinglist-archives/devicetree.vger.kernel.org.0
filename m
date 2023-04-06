Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 60A3D6D8FDE
	for <lists+devicetree@lfdr.de>; Thu,  6 Apr 2023 08:58:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235031AbjDFG6K (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Apr 2023 02:58:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35070 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235495AbjDFG6I (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Apr 2023 02:58:08 -0400
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.13])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C2DF893E1
        for <devicetree@vger.kernel.org>; Wed,  5 Apr 2023 23:57:41 -0700 (PDT)
Received: from [192.168.1.141] ([37.4.248.58]) by mrelayeu.kundenserver.de
 (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1N49Qd-1qScX81GuP-0103xM; Thu, 06 Apr 2023 08:57:03 +0200
Message-ID: <ea67b952-d94b-d7c4-e4d4-0e8d9daf1f08@i2se.com>
Date:   Thu, 6 Apr 2023 08:57:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH V5 4/6] dt-bindings: ARM: fsl: Add chargebyte Tarragon
To:     Shawn Guo <shawnguo@kernel.org>,
        Stefan Wahren <stefan.wahren@chargebyte.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        Evgeniy Polyakov <zbr@ioremap.net>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>, linux-imx@nxp.com,
        soc@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20230404080243.9613-1-stefan.wahren@chargebyte.com>
 <20230404080243.9613-5-stefan.wahren@chargebyte.com>
 <20230406014631.GL11367@dragon>
Content-Language: en-US
From:   Stefan Wahren <stefan.wahren@i2se.com>
In-Reply-To: <20230406014631.GL11367@dragon>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Provags-ID: V03:K1:7QEkdBBfrMm1kmrS/aM6oJhq4ReuMUZBV54BqCVhP63oqsJggRI
 5+Zda+zQP5N5E1XHUPCyEI+PJtL9h4zCWezkLBuP6wGnGNOrFK28REeo0VYS5I5UMt4hwPQ
 7cbWLDaC9RCNSRoHoQulPGzjiwCNxc2JAoWO1myG9CYq9rW5XDPAE53pzvSjNwhs1C5x5dr
 M1rM9h8ntf97MonMI/HGQ==
UI-OutboundReport: notjunk:1;M01:P0:9NXzCW9wF3c=;VJtVKcK+H5GvzAcvPMSPnbqPtdN
 rSsJq8A0FY5aeMSBaqraU06aA/Wtto3uGXxnh132+fzD7PLvw3oWYwYfpLjWpXdeLchRQ/E8n
 8P2euYvLpbbei3KFl18A3wXfPYYiMnohHyLcbHOE+VksERa0v2FfvXOmIhh0xyAAeglPaBqRm
 kZOYOteEmwxoowA31W05U4CXtF1sVShAbbaF52Q6kz1eoyQ+iGdzydd1lbqi9la+B+9F60G8h
 IFyVGbWQVYa0jcncpIRcAsHXVZKU2ALZXUVOHhrfdfkdXLOl5C8enNIP1x05jCMf9WSWq44+V
 +auFhxik2sX+VvsSrPubklUds1vt77DyGMCctqBN+SywttAhDsMb5AcuKkNNm3Dq5npsaF7CV
 RkxKvTU0oo+Ym0sYHTjgQwdpHLkokOki/Q6G5BJ/UOzCiuy84oC0xcQPA85OI+XUAQpbsvN6R
 7mqic9Tt+U8U2ggcH6tNFuVmOqm435SsyqbQMEeVA/xf+Ru0oYiLhAJk5Ido/t/MHRSMxZrf2
 G3Xg2ECoOE8RE7036c2uK0ZhldMlF1U9MQRqDLUg24iDHQmB+P58V9IXwxk+3izDjCOMvSgah
 DiBvoFnQaY+lf0GTymlmyBNUmbF3XW2//J3WLCKZmLKZGI4u6i6cUFaDlsmc8GJ315RXPiP7s
 6Gne6eXsxQpVlZjmtBPmVLSwVvRGSDab8YugXiWVEg==
X-Spam-Status: No, score=-1.4 required=5.0 tests=NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

Am 06.04.23 um 03:46 schrieb Shawn Guo:
> On Tue, Apr 04, 2023 at 10:02:41AM +0200, Stefan Wahren wrote:
>> This adds the compatibles for the chargebyte Tarragon boards.
>>
>> Signed-off-by: Stefan Wahren <stefan.wahren@chargebyte.com>
>> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> Applied 4 ~ 6, thanks!

thanks a lot.

What happens to patch 2 & 3?

Who take care of them?
