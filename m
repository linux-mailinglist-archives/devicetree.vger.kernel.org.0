Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5678453ECA0
	for <lists+devicetree@lfdr.de>; Mon,  6 Jun 2022 19:10:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239276AbiFFOHZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Jun 2022 10:07:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45536 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235611AbiFFOHX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Jun 2022 10:07:23 -0400
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6598262F9
        for <devicetree@vger.kernel.org>; Mon,  6 Jun 2022 07:07:20 -0700 (PDT)
Received: from [192.168.1.107] ([37.4.249.155]) by mrelayeu.kundenserver.de
 (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MwwqB-1nZxKu3OIt-00yNkM; Mon, 06 Jun 2022 16:07:11 +0200
Message-ID: <c4e55ac1-2ee9-2f61-7731-bee164907f41@i2se.com>
Date:   Mon, 6 Jun 2022 16:07:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: display: bcm2835-dpi: warning about #address-cells',
 '#size-cells'
Content-Language: en-US
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
References: <a28d1fe5-eac8-bb86-cbda-f3236c104d61@i2se.com>
 <20220606134748.zkmndftkorygdu4w@houat>
From:   Stefan Wahren <stefan.wahren@i2se.com>
In-Reply-To: <20220606134748.zkmndftkorygdu4w@houat>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Provags-ID: V03:K1:KuEydgGiR+M+OGw5Lo85DpNlXgnv8Xkt69yODJsIRcJAuDdUtHB
 t8of3hSSOlUGYqcxo8xKxyOh6d9fdYfAouYX4cjy13lDIHL8FLDWw7ORmpJD5uzZS4Yur/w
 ydQv7Mky9CV0/sWnHRmyQ0vHWQ3c1ZJc9i0upxULrral1ZWBLXJt5o5tCr2/2RCdCbutzEy
 S70rOvvmpj+yZhHnkj4RA==
X-UI-Out-Filterresults: notjunk:1;V03:K0:cijSELYeCx0=:p0lw3NnIzN5OJgqvKJyvr/
 +tqwgZQKuiDO6AVCn36aCu8Pu+sazzL5h6Jp/OSp+JSsxN1tzuqTcmbu1qh43GHgucjManyBH
 1qBt9zKDl9OF2mIZB2oIStuFMIVbX6/VXVTBPmNqKdv7BCknlw1WB4hlb6o0RKNEsgcmxNv+c
 BM6evxyJnyKr7IGou8GLdT7gAAfStv8se2C4qPGkVbZ0OfppxTbl99L87oweyOwu1HlYmQjL9
 Lbm2wPymxfiJsqQQoVYcrLgIl8if79nJmqsCNV36cPki3fdivJLtvGrLLxjfXJwAcCLE6dhVd
 HN3L8CaNusBYE6qy/Jwo6Yk3XtyTGr38Z+qLD2N39zfP0NI00vddx55QWRO73lBljsPsqT7UP
 ZfqWK7n+uhNHCRL8r/whKdzAbTez3+XyHixaGgdzz2YNV/tFVfeERwnuSZQXSzmjE7Wvp6gQM
 eDWuiuhcAajvSlmmLfMLC2mJHId7WeuYYnI6Xk2g4fefgRM4L/JBJfBDzgNdCY5noU/l1TgTd
 xJHhzjgppHcK93fAE6+tCaAVs2y/So/9KTr1RzdtZaTrGbn2zMb9x2DnoXErlgHqBq2sogqSc
 Hu/FdS7N71bQzVnUPrhOC/RK5M/NcXZ78uoEK2SvMZGMu75HxTsxpYBzJPLNKOy+VGqNs5BED
 +In2zgzFuYOED32k1C4jGzDt4frw52C71DJOVCVqn4zjepfDbW8Ui53AyBBxhGGe0uodz4wX9
 2wdSdllvFXCUX0K9SYEba0KkxjTo2upxQyKeA8pLvdfyVfgxKwtpFEBzO0g=
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Maxime,

Am 06.06.22 um 15:47 schrieb Maxime Ripard:
> On Mon, Jun 06, 2022 at 01:40:19PM +0200, Stefan Wahren wrote:
>> Hi,
>>
>> recently i noticed the following warning during "make dtbs_check"
>>
>> arch/arm/boot/dts/bcm2835-rpi-b.dtb: dpi@7e208000: '#address-cells',
>> '#size-cells' do not match any of the regexes: 'pinctrl-[0-9]+'
>>
>> During conversion to DT schema 094536003e06 "dt-bindings: display: Convert
>> VC4 bindings to schemas" the properties has been dropped from the example.
>>
>> But i'm not sure how to fix this properly (drop them from the bcm283x.dtsi
>> file or add the properties to brcm,bcm2835-dpi.yaml).
> So #address-cells and #size-cells are used to get the children register
> address and size.
>
> However, for DPI, it's not clear what the child node is going to be in
> the first place. The only one that stands out is the port node, but
> there's a single one. So we don't need a reg property to differentiate
> between multiple ports, and thus we don't need #address-cells or
> #size-cells.
>
> The proper fix would be to remove them from the bcm283x device tree.
thanks. I will send a patch soon.
>
> Maxime
