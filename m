Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3E6686FF589
	for <lists+devicetree@lfdr.de>; Thu, 11 May 2023 17:09:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238538AbjEKPJW convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Thu, 11 May 2023 11:09:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37498 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238499AbjEKPJS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 May 2023 11:09:18 -0400
Received: from mx0a-00128a01.pphosted.com (mx0a-00128a01.pphosted.com [148.163.135.77])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DD1B03C12
        for <devicetree@vger.kernel.org>; Thu, 11 May 2023 08:09:12 -0700 (PDT)
Received: from pps.filterd (m0167088.ppops.net [127.0.0.1])
        by mx0a-00128a01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 34BF1fa8001471;
        Thu, 11 May 2023 11:09:09 -0400
Received: from nwd2mta3.analog.com ([137.71.173.56])
        by mx0a-00128a01.pphosted.com (PPS) with ESMTPS id 3qgbybgm1s-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Thu, 11 May 2023 11:09:06 -0400
Received: from ASHBMBX8.ad.analog.com (ASHBMBX8.ad.analog.com [10.64.17.5])
        by nwd2mta3.analog.com (8.14.7/8.14.7) with ESMTP id 34BF8gjb051152
        (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
        Thu, 11 May 2023 11:08:42 -0400
Received: from ASHBCASHYB5.ad.analog.com (10.64.17.133) by
 ASHBMBX8.ad.analog.com (10.64.17.5) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.14; Thu, 11 May 2023 11:08:41 -0400
Received: from ASHBMBX9.ad.analog.com (10.64.17.10) by
 ASHBCASHYB5.ad.analog.com (10.64.17.133) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.14; Thu, 11 May 2023 11:08:41 -0400
Received: from zeus.spd.analog.com (10.66.68.11) by ashbmbx9.ad.analog.com
 (10.64.17.10) with Microsoft SMTP Server id 15.2.986.14 via Frontend
 Transport; Thu, 11 May 2023 11:08:41 -0400
Received: from nsa.ad.analog.com ([10.44.3.102])
        by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 34BF8YRi027099;
        Thu, 11 May 2023 11:08:37 -0400
From:   Nuno Sa <nuno.sa@analog.com>
To:     <devicetree@vger.kernel.org>
CC:     Frank Rowand <frowand.list@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Subject: [RFC PATCH 0/1] of: dynamic: allow freeing of_nodes after the overlay changeset
Date:   Thu, 11 May 2023 17:10:46 +0200
Message-ID: <20230511151047.1779841-1-nuno.sa@analog.com>
X-Mailer: git-send-email 2.40.1
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8BIT
X-ADIRuleOP-NewSCL: Rule Triggered
X-Proofpoint-ORIG-GUID: gE4yYpfgToApT9UQrKU9KS_kkmnmbtqM
X-Proofpoint-GUID: gE4yYpfgToApT9UQrKU9KS_kkmnmbtqM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-05-11_12,2023-05-05_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 phishscore=0
 impostorscore=0 spamscore=0 lowpriorityscore=0 mlxscore=0
 priorityscore=1501 clxscore=1015 mlxlogscore=378 adultscore=0 bulkscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2304280000 definitions=main-2305110131
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

There are valid cases where we might get in here with an unexpected
refcount. One example are devlinks between suppliers <-> consumers.
When a link is created, it will grab a reference to both the supplier and
the consumer devices (which can, potentially, hold a reference to it's
of_node) and this reference is not synchronously dropped when unbinding the
device from the driver. Instead, a work item is queued (see
devlink_dev_release()). This async nature will make that
__of_changeset_entry_destroy() is reached with a refcount > 1. But,
eventually, all the refcounts are released and of_node_release() is
reached.

All the above will lead to leaks and the following dumps:

[ 1297.035424] OF: ERROR: memory leak, expected refcount 1 instead of 2, of_node_get()/of_node_put() unbalanced - destroy cset entry: attach overlay node /fpga-axi/dummy_dev
[ 1297.050763] OF: ERROR: memory leak, expected refcount 1 instead of 3, of_node_get()/of_node_put() unbalanced - destroy cset entry: attach overlay node /regulator-vio
[ 1297.065654] OF: ERROR: memory leak, expected refcount 1 instead of 3, of_node_get()/of_node_put() unbalanced - destroy cset entry: attach overlay node /regulator-vdd-1-8
[ 1297.080885] OF: ERROR: memory leak, expected refcount 1 instead of 3, of_node_get()/of_node_put() unbalanced - destroy cset entry: attach overlay node /regulator-vref

 1297.168367] ------------[ cut here ]------------
[ 1297.173000] WARNING: CPU: 0 PID: 15340 at lib/refcount.c:25 kobject_get+0x9c/0xa0
[ 1297.180514] refcount_t: addition on 0; use-after-free.
[ 1297.185661] Modules linked in:
[ 1297.188727] CPU: 0 PID: 15340 Comm: kworker/0:2 Not tainted 6.3.1-dirty #5
[ 1297.195617] Hardware name: Xilinx Zynq Platform
[ 1297.200158] Workqueue: events_long device_link_release_fn
[ 1297.205600]  unwind_backtrace from show_stack+0x10/0x14
[ 1297.210880]  show_stack from dump_stack_lvl+0x40/0x4c
[ 1297.215983]  dump_stack_lvl from __warn+0x78/0x124
[ 1297.220816]  __warn from warn_slowpath_fmt+0x134/0x18c
[ 1297.220857]  warn_slowpath_fmt from kobject_get+0x9c/0xa0
[ 1297.220892]  kobject_get from of_node_get+0x14/0x1c
[ 1297.236279]  of_node_get from of_fwnode_get+0x34/0x40
[ 1297.236324]  of_fwnode_get from fwnode_full_name_string+0x34/0xa0
[ 1297.247455]  fwnode_full_name_string from device_node_string+0x5a8/0x750
[ 1297.247488]  device_node_string from pointer+0x3d0/0x67c
[ 1297.259497]  pointer from vsnprintf+0x20c/0x410
[ 1297.264063]  vsnprintf from vprintk_store+0x12c/0x430
[ 1297.269176]  vprintk_store from vprintk_emit+0xe0/0x23c
[ 1297.274454]  vprintk_emit from vprintk_default+0x20/0x28
[ 1297.274503]  vprintk_default from _printk+0x2c/0x58
[ 1297.274534]  _printk from kobject_put+0x8c/0x130
[ 1297.289299]  kobject_put from platform_device_release+0x10/0x3c
[ 1297.295245]  platform_device_release from device_release+0x30/0xa0
[ 1297.301458]  device_release from kobject_put+0x8c/0x130
[ 1297.306718]  kobject_put from device_link_release_fn+0x54/0xa8
[ 1297.312588]  device_link_release_fn from process_one_work+0x1fc/0x4c8
[ 1297.319079]  process_one_work from worker_thread+0x50/0x54c
[ 1297.324684]  worker_thread from kthread+0xd0/0xec
[ 1297.329421]  kthread from ret_from_fork+0x14/0x2c
[ 1297.334153] Exception stack(0xe0b95fb0 to 0xe0b95ff8)
[ 1297.339200] 5fa0:                                     00000000 00000000 00000000 00000000
[ 1297.347386] 5fc0: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[ 1297.355577] 5fe0: 00000000 00000000 00000000 00000000 00000013 00000000
[ 1297.362192] ---[ end trace 0000000000000000 ]---
[ 1297.366805] ------------[ cut here ]------------
[ 1297.371416] WARNING: CPU: 0 PID: 15340 at lib/refcount.c:28 fwnode_full_name_string+0x8c/0xa0
[ 1297.379957] refcount_t: underflow; use-after-free.
[ 1297.384739] Modules linked in:
[ 1297.387789] CPU: 0 PID: 15340 Comm: kworker/0:2 Tainted: G        W          6.3.1-dirty #5
[ 1297.396136] Hardware name: Xilinx Zynq Platform
[ 1297.400660] Workqueue: events_long device_link_release_fn
[ 1297.406079]  unwind_backtrace from show_stack+0x10/0x14
[ 1297.411319]  show_stack from dump_stack_lvl+0x40/0x4c
[ 1297.416389]  dump_stack_lvl from __warn+0x78/0x124
[ 1297.421206]  __warn from warn_slowpath_fmt+0x134/0x18c
[ 1297.426361]  warn_slowpath_fmt from fwnode_full_name_string+0x8c/0xa0
[ 1297.432820]  fwnode_full_name_string from device_node_string+0x5a8/0x750
[ 1297.439537]  device_node_string from pointer+0x3d0/0x67c
[ 1297.444867]  pointer from vsnprintf+0x20c/0x410
[ 1297.449406]  vsnprintf from vprintk_store+0x12c/0x430
[ 1297.454484]  vprintk_store from vprintk_emit+0xe0/0x23c
[ 1297.459727]  vprintk_emit from vprintk_default+0x20/0x28
[ 1297.465056]  vprintk_default from _printk+0x2c/0x58
[ 1297.469944]  _printk from kobject_put+0x8c/0x130
[ 1297.474570]  kobject_put from platform_device_release+0x10/0x3c
[ 1297.480507]  platform_device_release from device_release+0x30/0xa0
[ 1297.486705]  device_release from kobject_put+0x8c/0x130
[ 1297.491947]  kobject_put from device_link_release_fn+0x54/0xa8
[ 1297.497798]  device_link_release_fn from process_one_work+0x1fc/0x4c8
[ 1297.504256]  process_one_work from worker_thread+0x50/0x54c
[ 1297.509828]  worker_thread from kthread+0xd0/0xec
[ 1297.514550]  kthread from ret_from_fork+0x14/0x2c
[ 1297.519263] Exception stack(0xe0b95fb0 to 0xe0b95ff8)
[ 1297.524308] 5fa0:                                     00000000 00000000 00000000 00000000
[ 1297.532478] 5fc0: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[ 1297.540653] 5fe0: 00000000 00000000 00000000 00000000 00000013 00000000
[ 1297.547256] ---[ end trace 0000000000000000 ]---
[ 1297.168353] OF: ERROR: memory leak before free overlay changeset,  /regulator-vref
[ 1297.551874] ------------[ cut here ]------------
[ 1297.551880] WARNING: CPU: 0 PID: 15340 at lib/refcount.c:22 kobject_get+0x88/0xa0
[ 1297.551903] refcount_t: saturated; leaking memory.
[ 1297.551908] Modules linked in:
[ 1297.551918] CPU: 0 PID: 15340 Comm: kworker/0:2 Tainted: G        W          6.3.1-dirty #5
[ 1297.551931] Hardware name: Xilinx Zynq Platform
[ 1297.551938] Workqueue: events_long device_link_release_fn
[ 1297.551965]  unwind_backtrace from show_stack+0x10/0x14
[ 1297.551994]  show_stack from dump_stack_lvl+0x40/0x4c
[ 1297.552023]  dump_stack_lvl from __warn+0x78/0x124
[ 1297.552059]  __warn from warn_slowpath_fmt+0x134/0x18c
[ 1297.552092]  warn_slowpath_fmt from kobject_get+0x88/0xa0
[ 1297.552123]  kobject_get from of_node_get+0x14/0x1c
[ 1297.552146]  of_node_get from of_fwnode_get+0x34/0x40
[ 1297.552173]  of_fwnode_get from fwnode_full_name_string+0x34/0xa0
[ 1297.552204]  fwnode_full_name_string from device_node_string+0x5a8/0x750
[ 1297.552234]  device_node_string from pointer+0x3d0/0x67c
[ 1297.552262]  pointer from vsnprintf+0x20c/0x410
[ 1297.552289]  vsnprintf from vscnprintf+0x10/0x24
[ 1297.552317]  vscnprintf from printk_sprint+0x18/0xf4
[ 1297.552353]  printk_sprint from vprintk_store+0x2d0/0x430
[ 1297.552388]  vprintk_store from vprintk_emit+0xe0/0x23c
[ 1297.552422]  vprintk_emit from vprintk_default+0x20/0x28
[ 1297.552457]  vprintk_default from _printk+0x2c/0x58
[ 1297.552483]  _printk from kobject_put+0x8c/0x130
[ 1297.552507]  kobject_put from platform_device_release+0x10/0x3c
[ 1297.552539]  platform_device_release from device_release+0x30/0xa0
[ 1297.552571]  device_release from kobject_put+0x8c/0x130
[ 1297.552599]  kobject_put from device_link_release_fn+0x54/0xa8
[ 1297.552630]  device_link_release_fn from process_one_work+0x1fc/0x4c8
[ 1297.552657]  process_one_work from worker_thread+0x50/0x54c
[ 1297.552674]  worker_thread from kthread+0xd0/0xec
[ 1297.552701]  kthread from ret_from_fork+0x14/0x2c
[ 1297.552724] Exception stack(0xe0b95fb0 to 0xe0b95ff8)
[ 1297.552736] 5fa0:                                     00000000 00000000 00000000 00000000
[ 1297.552749] 5fc0: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[ 1297.552760] 5fe0: 00000000 00000000 00000000 00000000 00000013 00000000
[ 1297.552768] ---[ end trace 0000000000000000 ]---
[ 1297.769464] OF: ERROR: memory leak before free overlay changeset,  /regulator-vdd-1-8
[ 1297.777337] OF: ERROR: memory leak before free overlay changeset,  /fpga-axi/dummy_dev
[ 1297.777360] OF: ERROR: memory leak before free overlay changeset,  /regulator-vio

the above is easily reproducible with a dummy platform device that just
gets some regulators (devlinks are created at that point).

The culprit of the above is actually this line:

https://elixir.bootlin.com/linux/v6.4-rc1/source/drivers/of/dynamic.c#L366

This also makes me wonder if we should not have an extra patch just printing
'node->full_name' instead of '%pOF'. As seen, we should not make any assumptions
(like parent's being around :)) at this stage.

To fix the issue, I'm adding a new OVERLAY flag to inform that the changeset
is already gone so if we ever reach of_node_release() we can proceed
normally. Obviously, I'm not really sure about this and that's the whole reason
why I'm bringing this as an RFC. This looks like a nasty corner case and I know
that adding/removing devices dynamically is far from being easy to handle...

Also not sure if the driver core folks should be aware of this...

Lastly, one of workarounding this issue is by manually unbiding the device
from the driver before removing the overlay which would (potentially) give
time for the workers to run.

Nuno Sa (1):
  of: dynamic: allow freeing of_nodes after the overlay changeset

 drivers/of/dynamic.c | 31 +++++++++++++++++++++++++++----
 include/linux/of.h   |  1 +
 2 files changed, 28 insertions(+), 4 deletions(-)

-- 
2.40.1

