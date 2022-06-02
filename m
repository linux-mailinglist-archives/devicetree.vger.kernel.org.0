Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6C6A953B806
	for <lists+devicetree@lfdr.de>; Thu,  2 Jun 2022 13:49:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233722AbiFBLt0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Jun 2022 07:49:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44210 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234395AbiFBLtU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Jun 2022 07:49:20 -0400
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 60263267CD7
        for <devicetree@vger.kernel.org>; Thu,  2 Jun 2022 04:49:18 -0700 (PDT)
Received: from [192.168.41.62] ([46.114.149.130]) by mrelayeu.kundenserver.de
 (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MmDAW-1nW9vb09hI-00iGku; Thu, 02 Jun 2022 13:48:55 +0200
Message-ID: <cae71804-ccbb-5d55-839c-9806539be8be@i2se.com>
Date:   Thu, 2 Jun 2022 13:48:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH v5 5/6] ARM: configs: Enable DRM_V3D
Content-Language: en-US
To:     Peter Robinson <pbrobinson@gmail.com>,
        Arnd Bergmann <arnd@arndb.de>,
        bcm-kernel-feedback-list@broadcom.com,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@linux.ie>, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, Emma Anholt <emma@anholt.net>,
        Florian Fainelli <f.fainelli@gmail.com>, javierm@redhat.com,
        linux-arm-kernel@lists.infradead.org,
        linux-rpi-kernel@lists.infradead.org, maxime@cerno.tech,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Cc:     Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
References: <20220601110249.569540-1-pbrobinson@gmail.com>
 <20220601110249.569540-6-pbrobinson@gmail.com>
From:   Stefan Wahren <stefan.wahren@i2se.com>
In-Reply-To: <20220601110249.569540-6-pbrobinson@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Provags-ID: V03:K1:JvQauzxAxzLvPrRCwKoPIKI/irxXISdpoEZy5ps6DWbfJHQNGrQ
 hQiTE5zpMEIvHDl/OJWmYAFiS47l4N3JezDooUZ+laKmlethewAA2VteXGJDtB0ixQJUw0b
 BwzwuJ58tGXQY2tCyCzWWalO297u2+WVNzbALLbdaa5GNXwpYsz2dePAr9sfQsk5KY1bMnI
 tUQg25P7xa75LV76dRRTw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:onA5qaVFlSY=:zHtNqDS4uhJdgu/n/bWTUJ
 Y5R4FAsZ6ypBe+WVEF1b2dKeWD0s+8SEMWExQvQzrEl9W4R9Sg/c9/avGOLuVRkX/tcIJY/4q
 8Tq7vrTtVkhXiBynLHi63tBkX9NVFOxlpyHg9NQ1H5Ncavv0pZU224Lyh+H4EdiYpvNa8PkWV
 aXlcgjKKpI3zhaCUvoPHnlMwspedvOmclakLYD7SCRoLmX8K+H+CfnZN5wuIt5ish21SW/66L
 yzrF3AONb3AV45hZ3ez/BJEk2qj9oNtBNvlsrqQ0eXwVeLlFY0MuOQK6gdLFo7SAsrDBqFFkb
 g7d3lUJMCPsC7bcAOHJ8D5lPeo/N0f2wVLMnVwzoYpSEZSagUiOYgst67bXgUDFcy//N4IiV3
 iuQ+ijc2Pb4OqrgdQZqwlYUzMnD1CEXP8s+z0zWUl3Kh1qZZ1zEdeQ2c40vKK8ezMTr7Yskpf
 4z/OACcNjh44jGwsI2apRqJHJ6NEIzHbFBHJzBCiMxMO0TPoYdbR6Fg6amEW+I28Yq56EXR7q
 TGtR60RCbSwhUbZYN8sXt9PBhv8CY2UetY4t103p8FgmB29B/bROBx5vu/CTwJMyXs+dzfeM6
 Ha6vFaI61LakRywRCtLoofPSIvft9+D+OC2QwVluJaUSnUqhSz9ikHv0NTpF00RnveTboCZxk
 G8OnUY3REbDTyx+KbuKm4sMxYXgMfL8nbVuW/xWJ+R+GeTVWmBJnDtjgiZOvoUWRVCDSHzhXe
 iksXaqTfrMKz/xmHTUMZuy9wSuTtusG2Tpf4Y6ll1r0tFr3rfXLls2QrRqs=
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Am 01.06.22 um 13:02 schrieb Peter Robinson:
> BCM2711, the SoC used on the Raspberry Pi 4 has a different 3D
> render GPU IP than its predecessors. Enable it it on multi v7
> and bcm2835 configs.
>
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
Reviewed-by: Stefan Wahren <stefan.wahren@i2se.com>
