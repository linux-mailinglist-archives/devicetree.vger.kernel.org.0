Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B36746EC9C2
	for <lists+devicetree@lfdr.de>; Mon, 24 Apr 2023 12:06:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230299AbjDXKGf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Apr 2023 06:06:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33980 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229603AbjDXKGe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 Apr 2023 06:06:34 -0400
Received: from loongson.cn (mail.loongson.cn [114.242.206.163])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 338E81BD3
        for <devicetree@vger.kernel.org>; Mon, 24 Apr 2023 03:06:32 -0700 (PDT)
Received: from loongson.cn (unknown [112.20.110.102])
        by gateway (Coremail) with SMTP id _____8CxOuqnVEZk8gEAAA--.31S3;
        Mon, 24 Apr 2023 18:06:31 +0800 (CST)
Received: from [192.168.100.131] (unknown [112.20.110.102])
        by localhost.localdomain (Coremail) with SMTP id AQAAf8Dx97XlOkZk1Xc4AA--.10755S3;
        Mon, 24 Apr 2023 16:16:38 +0800 (CST)
Message-ID: <5bcbd96e-6acb-6027-445c-2eb3a9e0be34@loongson.cn>
Date:   Mon, 24 Apr 2023 16:16:36 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH] docs: dt: fix documented Primecell compatible string
To:     Baruch Siach <baruch@tkos.co.il>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     devicetree@vger.kernel.org, Alex Shi <alexs@kernel.org>
References: <8ced22f59980fdfdae869acb91119dadd34987c0.1672847681.git.baruch@tkos.co.il>
 <87sfcpbuwo.fsf@tarshish>
Content-Language: en-US
From:   Yanteng Si <siyanteng@loongson.cn>
In-Reply-To: <87sfcpbuwo.fsf@tarshish>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CM-TRANSID: AQAAf8Dx97XlOkZk1Xc4AA--.10755S3
X-CM-SenderInfo: pvl1t0pwhqwqxorr0wxvrqhubq/
X-Coremail-Antispam: 1Uk129KBjvJXoWxWw15Cw4xArW8tw1rtw4ruFg_yoW5Ww45pF
        929rWftFyIgF1jgws2gF18Zr4xA3WIyw4fKry8Kw1Fg3Z8JrWFyFyftF98KF97XFW8KayY
        qr45t3Z7GFW2vFJanT9S1TB71UUUUUJqnTZGkaVYY2UrUUUUj1kv1TuYvTs0mT0YCTnIWj
        qI5I8CrVACY4xI64kE6c02F40Ex7xfYxn0WfASr-VFAUDa7-sFnT9fnUUIcSsGvfJTRUUU
        bSxYFVCjjxCrM7AC8VAFwI0_Jr0_Gr1l1xkIjI8I6I8E6xAIw20EY4v20xvaj40_Wr0E3s
        1l1IIY67AEw4v_Jrv_JF1l8cAvFVAK0II2c7xJM28CjxkF64kEwVA0rcxSw2x7M28EF7xv
        wVC0I7IYx2IY67AKxVWDJVCq3wA2z4x0Y4vE2Ix0cI8IcVCY1x0267AKxVW8Jr0_Cr1UM2
        8EF7xvwVC2z280aVAFwI0_Gr1j6F4UJwA2z4x0Y4vEx4A2jsIEc7CjxVAFwI0_Gr1j6F4U
        JwAaw2AFwI0_Jrv_JF1le2I262IYc4CY6c8Ij28IcVAaY2xG8wAqjxCEc2xF0cIa020Ex4
        CE44I27wAqx4xG64xvF2IEw4CE5I8CrVC2j2WlYx0E2Ix0cI8IcVAFwI0_JF0_Jw1lYx0E
        x4A2jsIE14v26r1j6r4UMcvjeVCFs4IE7xkEbVWUJVW8JwACjcxG0xvEwIxGrwCYjI0Sjx
        kI62AI1cAE67vIY487MxAIw28IcxkI7VAKI48JMxC20s026xCaFVCjc4AY6r1j6r4UMxCI
        bckI1I0E14v26r1Y6r17MI8I3I0E5I8CrVAFwI0_Jr0_Jr4lx2IqxVCjr7xvwVAFwI0_Jr
        I_JrWlx4CE17CEb7AF67AKxVWUAVWUtwCIc40Y0x0EwIxGrwCI42IY6xIIjxv20xvE14v2
        6r1j6r1xMIIF0xvE2Ix0cI8IcVCY1x0267AKxVWUJVW8JwCI42IY6xAIw20EY4v20xvaj4
        0_Jr0_JF4lIxAIcVC2z280aVAFwI0_Jr0_Gr1lIxAIcVC2z280aVCY1x0267AKxVWUJVW8
        JbIYCTnIWIevJa73UjIFyTuYvjxUc0eHDUUUU
X-Spam-Status: No, score=-3.1 required=5.0 tests=BAYES_00,NICE_REPLY_A,
        SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


在 4/24/23 15:24, Baruch Siach 写道:
> Hi Rob, Krzysztof,
>
> On Wed, Jan 04 2023, Baruch Siach wrote:
>> Only arm,primecell is documented as compatible string for Primecell
>> peripherals. Current code agrees with that.
> I guess this fell between the cracks. I can't find this patch in
> patchwork. Maybe the Chinese text made patchwork reject this path. But
> the email is archived at lore:
>
>    https://lore.kernel.org/linux-devicetree/8ced22f59980fdfdae869acb91119dadd34987c0.1672847681.git.baruch@tkos.co.il/
>
> Should I send separate patches for the main document and its
> translation?

Yes, we will split this patch in most cases.


Thanks,

yanteng

>
> baruch
>
>> Signed-off-by: Baruch Siach <baruch@tkos.co.il>
>> ---
>>   Documentation/devicetree/usage-model.rst                    | 2 +-
>>   Documentation/translations/zh_CN/devicetree/usage-model.rst | 2 +-
>>   2 files changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/Documentation/devicetree/usage-model.rst b/Documentation/devicetree/usage-model.rst
>> index b6a287955ee5..0717426856b2 100644
>> --- a/Documentation/devicetree/usage-model.rst
>> +++ b/Documentation/devicetree/usage-model.rst
>> @@ -415,6 +415,6 @@ When using the DT, this creates problems for of_platform_populate()
>>   because it must decide whether to register each node as either a
>>   platform_device or an amba_device.  This unfortunately complicates the
>>   device creation model a little bit, but the solution turns out not to
>> -be too invasive.  If a node is compatible with "arm,amba-primecell", then
>> +be too invasive.  If a node is compatible with "arm,primecell", then
>>   of_platform_populate() will register it as an amba_device instead of a
>>   platform_device.
>> diff --git a/Documentation/translations/zh_CN/devicetree/usage-model.rst
>> b/Documentation/translations/zh_CN/devicetree/usage-model.rst
>> index c6aee82c7e6e..19ba4ae0cd81 100644
>> --- a/Documentation/translations/zh_CN/devicetree/usage-model.rst
>> +++ b/Documentation/translations/zh_CN/devicetree/usage-model.rst
>> @@ -325,6 +325,6 @@ Primecell设备。然而，棘手的一点是，AMBA总线上的所有设备并
>>   
>>   当使用DT时，这给of_platform_populate()带来了问题，因为它必须决定是否将
>>   每个节点注册为platform_device或amba_device。不幸的是，这使设备创建模型
>> -变得有点复杂，但解决方案原来并不是太具有侵略性。如果一个节点与“arm,amba-primecell”
>> +变得有点复杂，但解决方案原来并不是太具有侵略性。如果一个节点与“arm,primecell”
>>   兼容，那么of_platform_populate()将把它注册为amba_device而不是
>>   platform_device。
>

